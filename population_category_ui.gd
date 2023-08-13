# -- 01 @tool
# -- 02 class_name
class_name PopulationCategoryUI

# -- 03 extends
extends HBoxContainer

# -- 04 # docstring
#
# -- 05 signals
signal population_drag_started(category: String)
signal population_drag_finished(category_from: String, category_to: String)

# -- 06 enums
# -- 07 constants
# -- 08 exported variables
@export var category : String
# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
func _get_drag_data(_position) -> Variant:
	print("XXX: _get_drag_data()")
	population_drag_started.emit(category)
	return {
		"kind": "population",
		"category": category
	}


func _can_drop_data(_position, data):
	return data.kind == "population"


func _drop_data(_position, data):
	print("XXX: _drop_data(): ", data)
	population_drag_finished.emit(data.category, category)
	
	
# -- 16 public methods
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses



func _on_gui_input(event):	
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		print("event: %s, category: %s" % [event, category])
		
	if event is InputEventMouseButton and !event.pressed and event.button_index == 1:
		print("event: %s, category: %s" % [event, category])
