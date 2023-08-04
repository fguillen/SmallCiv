# -- 01 @tool
# -- 02 class_name
# -- 03 extends
extends Node

# -- 04 # docstring
#
# -- 05 signals
signal population_increased(value: int)
signal population_value_changed(value: int)
signal agriculture_value_changed(value: int)

# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
func emit_population_increased(value: int):
	population_increased.emit(value)
	

func emit_population_value_changed(value: int):
	population_value_changed.emit(value)
	
	
func emit_agriculture_value_changed(value: int):
	agriculture_value_changed.emit(value)

	
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

