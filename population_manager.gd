# -- 01 @tool
# -- 02 class_name
class_name PopulationManager
# -- 03 extends
extends Node2D

# -- 04 # docstring
#
# -- 05 signals
signal population_value_changed(value: int)
signal agriculture_value_changed(value: int)

# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables
var _population := 0
var _agriculture := 0
var _army := 0
var _trade := 0
var _labor := 0
var _scholars := 0


# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func increase_population(amount: int):
	_population += amount
	increase_agriculture(amount)
	population_value_changed.emit(_population)
	
	
func increase_agriculture(amount: int):
	_agriculture += amount
	agriculture_value_changed.emit(_population)
	
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

