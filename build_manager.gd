# -- 01 @tool
# -- 02 class_name
class_name BuildManager
# -- 03 extends
extends PhaseManager

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
func perform():
	var labor_points = _data_manager.get_labor()
	print("XXX: labor_points: ", labor_points)
	_data_manager.modify_labor_points(labor_points)
	
	
	
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

