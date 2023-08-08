# -- 01 @tool
# -- 02 class_name
class_name DataManager
# -- 03 extends
extends Node2D

# -- 04 # docstring
#
# -- 05 signals
signal total_population_value_changed(value: int)
signal agriculture_value_changed(value: int)
signal army_value_changed(value: int)
signal trade_value_changed(value: int)
signal labor_value_changed(value: int)
signal scholars_value_changed(value: int)

signal leader_gained(leader: Dictionary)

signal grain_value_changed(value: int)
signal gold_value_changed(value: int)

# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables

var _total_population := 0

var _population := {
	"agriculture" = 0,
	"army" = 0,
	"trade" = 0,
	"labor" = 0,
	"scholars" = 0
}

var _leaders : Array[Dictionary]

var _grain := 0
var _gold := 0


# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func increase_population(amount: int):
	_total_population += amount
	modify("agriculture", amount)
	total_population_value_changed.emit(_total_population)
	

func modify(category: String, amount: int):
	match category:
		"agriculture":
			modify_agriculture(amount)
		"army":
			modify_army(amount)
		"trade":
			modify_trade(amount)
		"labor":
			modify_labor(amount)
		"scholars":
			modify_scholars(amount)


func modify_agriculture(amount: int):
	_population.agriculture += amount
	agriculture_value_changed.emit(_population.agriculture)
	

func modify_army(amount: int):
	_population.army += amount
	army_value_changed.emit(_population.army)


func modify_trade(amount: int):
	_population.trade += amount
	trade_value_changed.emit(_population.trade)
	
	
func modify_labor(amount: int):
	_population.labor += amount
	labor_value_changed.emit(_population.labor)
	
	
func modify_scholars(amount: int):
	_population.scholars += amount
	scholars_value_changed.emit(_population.scholars)
	
	
func modify_grain(amount: int):
	_grain += amount
	grain_value_changed.emit(_grain)
	

func modify_gold(amount: int):
	_gold += amount
	gold_value_changed.emit(_gold)
	
	
func gain_leader(leader: Dictionary):
	_leaders.append(leader)
	leader_gained.emit(leader)
	

func get_total_population() -> int:
	return _total_population
	

func get_agriculture() -> int:
	return _population.agriculture


func get_army() -> int:
	return _population.army
	
	
func get_trade() -> int:
	return _population.trade
	
	
func get_labor() -> int:
	return _population.labor
	
	
func get_schoolars() -> int:
	return _population.schoolars
	
	
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

