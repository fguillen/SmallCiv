# -- 01 @tool
# -- 02 class_name
class_name DiceRoller
# -- 03 extends
extends Node2D

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
const PATTERN = "(\\d+)[Dd](\\d+)([+-])?(\\d+)?"

# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
#func _init():
#	roll("1d6+2")
#	roll("1d6")
#	roll("2d20")
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
static func roll(configuration: String) -> Dictionary:
	var regex = RegEx.new()
	regex.compile(PATTERN)
	var regex_result = regex.search(configuration)
	var num_dice = int(regex_result.strings[1])
	var dice_value = int(regex_result.strings[2])
	var bonus_operator = regex_result.strings[3]
	var bonus_value = int(regex_result.strings[4])
	
	var result = {}
	result["result"] = 0
	result["rolls"] = []
	result["num_dice"] = num_dice
	result["dice_value"] = dice_value
	result["bonus_operator"] = bonus_operator
	result["bonus_value"] = bonus_value
	
	for i in num_dice:
		var roll_result = randi_range(1, dice_value)
		result.rolls.append(roll_result)
		result.result += roll_result
	
	if bonus_operator == "+":
		result.result += bonus_value
	elif bonus_operator == "-":
		result.result -= bonus_value
	
	print("DiceRoller.roll(%s): %s" % [configuration, result])
	return result
	
	
	
#	var num dices = 
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

