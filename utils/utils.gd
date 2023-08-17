# -- 01 @tool
# -- 02 class_name
class_name Utils
# -- 03 extends
extends Node

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
static func is_match(string, pattern) -> bool:
	var regex = RegEx.create_from_string(pattern)
	return regex.search(string) != null


static func matches(string, pattern) -> PackedStringArray:
	var result = RegEx.create_from_string(pattern).search(string).strings
	print("Utils.matches(%s, %s):%s" % [string, pattern, result])
	return result
	
	
static func sample(array: Array) -> Variant:
	if array.size() == 0:
		return null
		
	return array[randi() % array.size()]
	
	
# -- 10 private variables
# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

