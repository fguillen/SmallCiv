# -- 01 @tool
# -- 02 class_name
# -- 03 extends
extends Node

# -- 04 # docstring
#
# -- 05 signals
signal culture_set(value: String)

signal total_population_value_changed(value: int)
signal agriculture_value_changed(value: int)
signal army_value_changed(value: int)
signal trade_value_changed(value: int)
signal labor_value_changed(value: int)
signal scholars_value_changed(value: int)

signal natural_resource_gained(natural_resource: Dictionary)
signal manufactured_resource_gained(manufactured_resource: Dictionary)

signal leader_gained(leader: Dictionary)
signal leader_removed(leader: Dictionary)

signal city_built(city: City)

signal grain_changed(value: int)
signal gold_changed(value: int)
signal labor_points_changed(value: int)

signal advance_gained(advance: Dictionary)

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
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

