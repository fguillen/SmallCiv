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
@onready var population_value_label = %Population/ValueLabel
@onready var agriculture_value_label = %Agriculture/ValueLabel
@onready var grain_value_label = $Grain/ValueLabel
@onready var gold_value_label = $Gold/ValueLabel
@onready var leaders_value_label = $Leaders/ValueLabel
@onready var advances_value_label = $Advances/ValueLabel

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	data_manager.total_population_value_changed.connect(_on_populate_value_changed)
	data_manager.agriculture_value_changed.connect(_on_agriculture_value_changed)
	data_manager.grain_changed.connect(_on_grain_changed)
	data_manager.gold_changed.connect(_on_gold_changed)
	data_manager.leader_gained.connect(_on_leader_gained)
	data_manager.advance_gained.connect(_on_advance_gained)
	
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
	
# -- 17 private methods
# -- 18 signal listeners
func _on_populate_value_changed(value: int):
	population_value_label.text = str(value)
	

func _on_agriculture_value_changed(value: int):
	agriculture_value_label.text = str(value)
	
	
func _on_grain_changed(value: int):
	grain_value_label.text = str(value)
	

func _on_gold_changed(value: int):
	gold_value_label.text = str(value)
	
	
func _on_leader_gained(leader: Dictionary):
	leaders_value_label.text += ", " + leader.kind
	
	
func _on_advance_gained(advance: Dictionary):
	advances_value_label.text += ", " + advance.name


# -- 19 innerclasses

