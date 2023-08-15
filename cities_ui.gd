# -- 01 @tool
# -- 02 class_name
class_name CitiesUI

# -- 03 extends
extends PanelContainer

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
@export var city_ui_template : PackedScene


# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
@onready var container = %CitiesContainer

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	Events.city_built.connect(_on_city_built)
	
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
# -- 17 private methods
# -- 18 signal listeners
func _on_city_built(city: City):
	var city_ui = city_ui_template.instantiate()
	city_ui.setup(city)
	container.add_child(city_ui)

# -- 19 innerclasses

