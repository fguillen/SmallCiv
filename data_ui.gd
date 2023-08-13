# -- 01 @tool
# -- 02 class_name
class_name DataUI
# -- 03 extends
extends Node

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
@export var data_manager : DataManager
# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
@onready var culture_label = %Culture/Label

@onready var population_value_label = %Population/ValueLabel
@onready var agriculture_value_label = %Agriculture/ValueLabel
@onready var army_value_label = %Army/ValueLabel
@onready var trade_value_label = %Trade/ValueLabel
@onready var labor_value_label = %Labor/ValueLabel
@onready var scholars_value_label = %Scholars/ValueLabel

@onready var grain_value_label = %Grain/ValueLabel
@onready var gold_value_label = %Gold/ValueLabel

@onready var natural_resources_container = %NaturalResources/Container
@onready var leaders_container = %Leaders/Container
@onready var advances_container = %Advances/Container


#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	data_manager.culture_set.connect(_on_culture_set)
	
	data_manager.total_population_value_changed.connect(_on_populate_value_changed)
	data_manager.natural_resource_gained.connect(_on_natural_resource_gained)
	
	data_manager.agriculture_value_changed.connect(_on_agriculture_value_changed)
	data_manager.army_value_changed.connect(_on_army_value_changed)
	data_manager.trade_value_changed.connect(_on_trade_value_changed)
	data_manager.labor_value_changed.connect(_on_labor_value_changed)
	data_manager.scholars_value_changed.connect(_on_scholars_value_changed)
	
	
	data_manager.grain_changed.connect(_on_grain_changed)
	data_manager.gold_changed.connect(_on_gold_changed)
	
	data_manager.leader_gained.connect(_on_leader_gained)
	data_manager.advance_gained.connect(_on_advance_gained)
	
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
	
# -- 17 private methods
# -- 18 signal listeners
func _on_culture_set(value: Dictionary):
	culture_label.text = value.name


func _on_populate_value_changed(value: int):
	population_value_label.text = str(value)
	
	
func _on_natural_resource_gained(value: Dictionary):
	var label = Label.new()
	label.text = value.name
	natural_resources_container.add_child(label)
	

func _on_agriculture_value_changed(value: int):
	agriculture_value_label.text = str(value)
	

func _on_army_value_changed(value: int):
	army_value_label.text = str(value)
	
	
func _on_trade_value_changed(value: int):
	trade_value_label.text = str(value)
	
	
func _on_labor_value_changed(value: int):
	labor_value_label.text = str(value)
	
	
func _on_scholars_value_changed(value: int):
	scholars_value_label.text = str(value)
	
	
func _on_grain_changed(value: int):
	grain_value_label.text = str(value)
	

func _on_gold_changed(value: int):
	gold_value_label.text = str(value)
	
	
func _on_leader_gained(value: Dictionary):
	var label = Label.new()
	label.text = value.kind
	leaders_container.add_child(label)
	
	
func _on_advance_gained(value: Dictionary):
	var label = Label.new()
	label.text = value.name
	advances_container.add_child(label)


# -- 19 innerclasses

