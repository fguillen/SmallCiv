# -- 01 @tool
@tool
# -- 02 class_name
class_name PopulationUI

# -- 03 extends
extends PanelContainer

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
@export var _data_manager : DataManager


# -- 09 public variables

# -- 10 private variables

# -- 11 onready variables
@onready var population_dragger = $PopulationDragger

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
func _get_configuration_warnings():
	print("XXX: _get_configuration_warnings()")
	var result = []
	if !_data_manager:
		result.append("DataManager no set")
		
	return result
		
		
# -- 16 public methods
func start_dragging(category: String):
	population_dragger.activate()
	print("XXX: PopulationUI.start_dragging: ", category)
	

func cancel_dragging():
	population_dragger.deactivate()
	
	
func finish_dragging(category_from: String, category_to: String):
	population_dragger.deactivate()
	print("XXX: PopulationUI.finish_dragging: %s, %s" % [category_from, category_to])
	_data_manager.modify(category_from, -1)
	_data_manager.modify(category_to, 1)
	
	
func _notification(what):
	if what == NOTIFICATION_DRAG_END and !is_drag_successful():
		cancel_dragging()
	

	
	
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

