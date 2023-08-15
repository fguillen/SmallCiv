# -- 01 @tool
# -- 02 class_name
class_name CityUI
# -- 03 extends
extends PanelContainer

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables
var _city : City


# -- 11 onready variables
@onready var state_value_label = %State
@onready var construction_progress_value_label = %ConstructionProgress/ValueLabel

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func setup(city: City):
	_city = city
	_city.labor_points_constructed_changed.connect(_on_labor_points_constructed_changed)
	
	
# -- 17 private methods
# -- 18 signal listeners
func _on_use_labor_button_pressed():
	_city.add_labor_points_contructed(1)
	

func _on_labor_points_constructed_changed(value: int):
	var labor_points_total = _city.labor_points_total
	construction_progress_value_label.text = "%03d/%03d" % [value, labor_points_total]
	
# -- 19 innerclasses




