<?php
if (function_exists('json_encode') && function_exists('json_decode')) {
	class JSON_obj
	{
		function encode($data)
		{
			return json_encode($data);
		}

		function decode($data)
		{
			return json_decode($data);
		}
	}
} else {
	class JSON_obj
	{
		function JSON_obj()
		{
			define('EOF', 0);
			define('DATUM', 1);
			define('LBRACE', 2);
			define('LBRACKET', 3);
			define('RBRACE', 4);
			define('RBRACKET', 5);
			define('COMMA', 6);
			define('COLON', 7);
		}

		var $_source;
		var $_sourceLength;
		var $_offset;
		var $_token;

		function encode($value)
		{
			return $this->_encodeValue($value);
		}

		function _encodeArray(&$array)
		{
			$tmpArray = array();
			if (!empty($array) && (array_keys($array) !== range(0, count($array) - 1))) {
				$result = '{';
				foreach ($array as $key => $value) {
					$key = (string)$key;
					$tmpArray[] = $this->_encodeString($key) . ':' . $this->_encodeValue($value);
				}
				$result .= implode(',', $tmpArray);
				$result .= '}';
			} else {
				$result = '[';
				$length = count($array);
				for ($i = 0; $i < $length; ++$i) {
					$tmpArray[] = $this->_encodeValue($array[$i]);
				}
				$result .= implode(',', $tmpArray);
				$result .= ']';
			}
			return $result;
		}

		function _encodeValue(&$value)
		{
			if (is_array($value)) {
				return $this->_encodeArray($value);
			} else if (is_int($value) || is_float($value)) {
				return (string)$value;
			} else if (is_string($value)) {
				return $this->_encodeString($value);
			} else if (is_bool($value)) {
				return $value ? 'true' : 'false';
			}
		}

		function _encodeString(&$string)
		{
			$search = array('\\', "\n", "\t", "\r", "\b", "\f", '"');
			$replace = array('\\\\', '\\n', '\\t', '\\r', '\\b', '\\f', '\"');
			$string = str_replace($search, $replace, $string);
			$string = str_replace(array(chr(0x08), chr(0x0C)), array('\b', '\f'), $string);
			return '"' . $string . '"';
		}

		function decode($source)
		{
			$this->_source = $source;
			$this->_sourceLength = strlen($source);
			$this->_token = EOF;
			$this->_offset = 0;
			$this->_getNextToken();
			return $this->_decodeValue();
		}

		function _decodeValue()
		{
			switch ($this->_token) {
				case DATUM:
					$result = $this->_tokenValue;
					$this->_getNextToken();
					return $result;
					break;
				case LBRACE:
					return $this->_decodeObject();
					break;
				case LBRACKET:
					return $this->_decodeArray();
					break;
				default:
					return null;
					break;
			}
		}

		function _decodeObject()
		{
			$result = array();
			$tok = $this->_getNextToken();
			while ($tok && $tok != RBRACE) {
				$key = $this->_tokenValue;
				$this->_getNextToken();
				$tok = $this->_getNextToken();
				$result[$key] = $this->_decodeValue();
				$tok = $this->_token;
				if ($tok == RBRACE) {
					break;
				}
				$tok = $this->_getNextToken();
			}
			$this->_getNextToken();
			return $result;
		}

		function _decodeArray()
		{
			$result = array();
			$tok = $this->_getNextToken();
			$index = 0;
			while ($tok && $tok != RBRACKET) {
				$result[$index++] = $this->_decodeValue();
				$tok = $this->_token;
				if ($tok == RBRACKET || !$tok) {
					break;
				}
				$tok = $this->_getNextToken();
			}
			$this->_getNextToken();
			return $result;
		}

		function _getNextToken()
		{
			$this->_token = EOF;
			$this->_tokenValue = null;
			if (preg_match('/([\t\b\f\n\r ]+)/', $this->_source, $matches, PREG_OFFSET_CAPTURE, $this->_offset) && $matches[0][1] == $this->_offset) {
				$this->_offset += strlen($matches[0][0]);
			}
			if ($this->_offset >= $this->_sourceLength) {
				return EOF;
			}
			$str = $this->_source;
			$str_length = $this->_sourceLength;
			$i = $this->_offset;
			$start = $i;
			switch ($str[$i]) {
				case '{':
					$this->_token = LBRACE;
					break;
				case '}':
					$this->_token = RBRACE;
					break;
				case '[':
					$this->_token = LBRACKET;
					break;
				case ']':
					$this->_token = RBRACKET;
					break;
				case ',':
					$this->_token = COMMA;
					break;
				case ':':
					$this->_token = COLON;
					break;
				case '"':
					$result = '';
					do {
						if ($i++ >= $str_length) {
							break;
						}
						$chr = $str[$i];
						if ($chr == '\\') {
							if ($i++ >= $str_length) {
								break;
							}
							$chr = $str[$i];
							switch ($chr) {
								case '"' :
									$result .= '"';
									break;
								case '\\':
									$result .= '\\';
									break;
								case '/' :
									$result .= '/';
									break;
								case 'b' :
									$result .= chr(8);
									break;
								case 'f' :
									$result .= chr(12);
									break;
								case 'n' :
									$result .= chr(10);
									break;
								case 'r' :
									$result .= chr(13);
									break;
								case 't' :
									$result .= chr(9);
									break;
							}
						} else if ($chr == '"') {
							break;
						} else {
							$result .= $chr;
						}
					} while ($i < $str_length);
					$this->_token = DATUM;
					$this->_tokenValue = $result;
					break;
				case 't':
					if (($i + 3) < $str_length && substr($str, $start, 4) == 'true') {
						$this->_token = DATUM;
					}
					$this->_tokenValue = true;
					$i += 3;
					break;
				case 'f':
					if (($i + 4) < $str_length && substr($str, $start, 5) == 'false') {
						$this->_token = DATUM;
					}
					$this->_tokenValue = false;
					$i += 4;
					break;
				case 'n':
					if (($i + 3) < $str_length && substr($str, $start, 4) == 'null') {
						$this->_token = DATUM;
					}
					$this->_tokenValue = NULL;
					$i += 3;
					break;
			}
			if ($this->_token != EOF) {
				$this->_offset = $i + 1;
				return ($this->_token);
			}
			$chr = $str[$i];
			if (preg_match('/-?([0-9]*)(\.[0-9]*)?(([eE])[-+]?[0-9]+)?/s', $str, $matches, PREG_OFFSET_CAPTURE, $start) && $matches[0][1] == $start) {
				$datum = $matches[0][0];
				$val = intval($datum);
				$fVal = floatval($datum);
				$this->_tokenValue = ($val == $fVal ? $val : $fVal);
				$this->_token = DATUM;
				$this->_offset = $start + strlen($datum);
			}
			return ($this->_token);
		}
	}
} ?>