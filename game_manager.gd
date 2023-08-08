# -- 01 @tool
# -- 02 class_name
class_name GameManager
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
var turn := 0


# -- 10 private variables
# -- 11 onready variables
@onready var setup_manager = $SetupManager
@onready var gain_culture_manager = $GainCultureManager
@onready var population_increase_manager = $PopulationIncreaseManager
@onready var population_distribution_manager = $PopulationDistributionManager
@onready var gain_leader_manager = $GainLeaderManager
@onready var harvest_manager = $HarvestManager


#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	_setup.call_deferred()
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func phase_population_increase():
	population_increase_manager.perform()
	
	
func phase_population_distribution():
	pass
	

func phase_leader_gain():
	pass
	
	
func phase_harvest():
	pass
	

func phase_disaster_check():
	pass
	

func phase_upkeep():
	pass
	

func phase_war():
	pass
	
	
func phase_trade():
	pass
	
	
func phase_build():
	pass
	
	
func phase_research():
	pass
	
	
func phase_income():
	pass
	
	

# -- 17 private methods
func _setup():
	population_increase_manager.setup(self)
	population_distribution_manager.setup(self)
	
# -- 18 signal listeners
# -- 19 innerclasses

