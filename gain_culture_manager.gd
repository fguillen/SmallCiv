# -- 01 @tool
# -- 02 class_name
class_name GainCultureManager
# -- 03 extends
extends PhaseManager

# -- 04 # docstring
#
# -- 05 signals
signal pick_one_culture()

# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func perform():
	_gain_culture()
		
		
# -- 17 private methods
func _gain_culture():
	var die_roll = DiceRoller.roll("1d%d" % CulturesTable.DATA.size()).result
	
	# TODO: if 1d20 >= 16 pick up culture
	var culture = CulturesTable.DATA[die_roll - 1]
	_data_manager.set_culture(culture)
# -- 18 signal listeners
# -- 19 innerclasses

