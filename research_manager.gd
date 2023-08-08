# -- 01 @tool
# -- 02 class_name
class_name ResearchManager
# -- 03 extends
extends PhaseManager

# -- 04 # docstring
#
# -- 05 signals
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
	var num_scholars = _data_manager.get_schoolars()
	var num_thinkers = _data_manager.get_schoolars()
	# TODO: Add research generators
	
	var num_rolls = num_scholars + num_thinkers
	
	for i in num_rolls:
		var dice_roll = DiceRoller.roll("1d12")
		if dice_roll == 1:
			_gain_random_advance()
			


# -- 17 private methods
func _gain_random_advance():
	# TODO: if 1d3 == 3 pick_one
	var die_roll = DiceRoller.roll("1d%d" % AdvancesTable.DATA.size())
	var advance = AdvancesTable.DATA[die_roll-1]
	_data_manager.gain_advance(advance)
	
# -- 18 signal listeners
# -- 19 innerclasses

