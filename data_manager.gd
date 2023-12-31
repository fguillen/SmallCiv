# -- 01 @tool
# -- 02 class_name
class_name DataManager
# -- 03 extends
extends Node

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables

var _culture : Dictionary

var _population := {
	"agriculture" = 0,
	"army" = 0,
	"trade" = 0,
	"labor" = 0,
	"scholars" = 0
}

var _labor_points := 0

var _natural_resources : Array[Dictionary]
var _manufactured_resources : Array[Dictionary]
var _leaders : Array[Dictionary]
var _advances : Array[Dictionary]
var _cities : Array[City]


var _grain := 0
var _gold := 0


# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func set_culture(value: Dictionary):
	_culture = value
	Events.culture_set.emit(value)
	
	
func increase_population(amount: int):
	modify("agriculture", amount)
	
	

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
	Events.agriculture_value_changed.emit(_population.agriculture)
	_total_population_changed()
	

func modify_army(amount: int):
	_population.army += amount
	Events.army_value_changed.emit(_population.army)
	_total_population_changed()


func modify_trade(amount: int):
	_population.trade += amount
	Events.trade_value_changed.emit(_population.trade)
	_total_population_changed()
	
	
func modify_labor(amount: int):
	_population.labor += amount
	Events.labor_value_changed.emit(_population.labor)
	_total_population_changed()
	
	
func modify_scholars(amount: int):
	_population.scholars += amount
	Events.scholars_value_changed.emit(_population.scholars)
	_total_population_changed()
	
	
func modify_grain(amount: int):
	_grain += amount
	Events.grain_changed.emit(_grain)
	

func modify_gold(amount: int):
	_gold += amount
	Events.gold_changed.emit(_gold)


func modify_labor_points(amount: int):
	_labor_points += amount
	print("XXX: _labor_points: ", _labor_points)
	Events.labor_points_changed.emit(_labor_points)	
	
	
func gain_natural_resource(natural_resource: Dictionary):
	print("XXX: gain_natural_resource: ", natural_resource)
	_natural_resources.append(natural_resource)
	Events.natural_resource_gained.emit(natural_resource)
	

func gain_manufactured_resource(manufactured_resource: Dictionary):
	_manufactured_resources.append(manufactured_resource)
	Events.manufactured_resource_gained.emit(manufactured_resource)


func gain_leader(leader: Dictionary):
	_leaders.append(leader)
	Events.leader_gained.emit(leader)
	
	
func gain_advance(advance: Dictionary):
	_advances.append(advance)
	Events.advance_gained.emit(advance)
	

func add_city(city: City):
	_cities.append(city)
	Events.city_built.emit(city)
	

func get_total_population() -> int:
	var result = 0
	for value in _population.values():
		result += value
		
	return result
	

func get_population() -> Dictionary:
	return _population
	

func get_agriculture() -> int:
	return _population.agriculture


func get_army() -> int:
	return _population.army
	
	
func get_trade() -> int:
	return _population.trade
	
	
func get_labor() -> int:
	return _population.labor	
	
	
func get_scholars() -> int:
	return _population.scholars


func get_grain() -> int:
	return _grain
	

func get_gold() -> int:
	return _gold	
	
	
func get_labor_points() -> int:
	return _labor_points
	
	
func get_leaders() -> Array:
	return _leaders


func get_leaders_by_kind(kind: String) -> Array[Dictionary]:
	return _leaders.filter(func(e): return e.kind == kind)
	

func has_leader(kind: String):
	return get_leaders_by_kind(kind).size() > 0



func get_advances() -> Array:
	return _advances


func get_advances_by_name(p_name: String) -> Array[Dictionary]:
	return _advances.filter(func(e): return e.name == p_name)
	

func has_advance(p_name: String):
	return get_advances_by_name(p_name).size() > 0
	


func get_natural_resources() -> Array:
	return _natural_resources


func get_natural_resources_by_name(p_name: String) -> Array[Dictionary]:
	return _natural_resources.filter(func(e): return e.name == p_name)
	

func has_natural_resource(p_name: String):
	return get_natural_resources_by_name(p_name).size() > 0


	
# -- 17 private methods
func _total_population_changed():
	Events.total_population_value_changed.emit(get_total_population())
# -- 18 signal listeners
# -- 19 innerclasses

