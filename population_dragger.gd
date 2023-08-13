# -- 01 @tool
# -- 02 class_name
class_name PopulationDragger

# -- 03 extends
extends Node2D

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
func _ready():
	visible = false
	set_process(false)
	
# -- 15 remaining built-in virtual methods
func _process(_delta):
	global_position = get_global_mouse_position()
	
# -- 16 public methods
func activate():
	visible = true
	set_process(true)
	
	
func deactivate():
	visible = false
	set_process(false)

# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

