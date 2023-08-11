# -- 01 @tool
# -- 02 class_name
class_name ResourceManager
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
	var die_roll = DiceRoller.roll("1d10").result
	
	match die_roll:
		1, 2, 3:
			pass
		4, 5:
			_choose_manufatured_resource()
		6, 7, 8, 9, 10:
			_gain_random_natural_resource()
		_:
			print("ResourceManager.perform() no valid option: ", die_roll)
			
			


# -- 17 private methods
func _choose_manufatured_resource():
	print("XXX: _choose_manufatured_resource()")
	# TODO: implement this
	
	
func _gain_random_natural_resource():
	# TODO: if 1d3 == 3 pick_one
	var die_roll = DiceRoller.roll("1d%d" % NaturalResourcesTable.DATA.size()).result
	var natural_resource = NaturalResourcesTable.DATA[die_roll-1]
	_data_manager.gain_natural_resource(natural_resource)
	
	
# -- 18 signal listeners
# -- 19 innerclasses

