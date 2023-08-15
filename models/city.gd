class_name City
extends Resource

signal labor_points_constructed_changed(value: int)

var name: String
var labor_points_total: int
var labor_points_constructed: int
var wonder = null


func _init(p_name: String, p_labor_points_total: int, p_labor_points_constructed: int = 0, p_wonder = null):
	name = p_name
	labor_points_total = p_labor_points_total
	labor_points_constructed = p_labor_points_constructed
	wonder = p_wonder	
	
	
func add_labor_points_contructed(value: int):
	labor_points_constructed += value
	labor_points_constructed_changed.emit(labor_points_constructed)
