# -- 01 @tool
# -- 02 class_name
class_name GainLeaderManager

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
	var die_roll = DiceRoller.roll("1d6")
	if [1, 2].has(die_roll):
		_gain_leader()
		
		
# -- 17 private methods
func _gain_leader():
	var die_roll = DiceRoller.roll("1d%d" % LeadersTable.DATA.size())
	var leader = LeadersTable.DATA.get(die_roll)
	_data_manager.gain_leader(leader)
		
# -- 18 signal listeners
# -- 19 innerclasses

