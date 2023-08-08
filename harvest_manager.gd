# -- 01 @tool
# -- 02 class_name
class_name HarvestManager
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
	var agriculture = _population_manager.get_agriculture()
	var grain = agriculture * 3
	_population_manager.modify_grain(grain)
	
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

