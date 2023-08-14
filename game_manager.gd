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
@onready var setup_manager : SetupManager = $SetupManager
@onready var gain_culture_manager : GainCultureManager = $GainCultureManager
@onready var population_increase_manager : PopulationIncreaseManager = $PopulationIncreaseManager
@onready var gain_resource_manager = $GainResourceManager
@onready var population_distribution_manager : PopulationDistributionManager= $PopulationDistributionManager
@onready var gain_leader_manager : GainLeaderManager = $GainLeaderManager
@onready var harvest_manager : HarvestManager = $HarvestManager
@onready var upkeep_manager : UpkeepManager = $UpkeepManager
@onready var trade_manager_wip = $TradeManager_WIP
@onready var war_manager_wip = $WarManager_WIP
@onready var build_manager = $BuildManager
@onready var research_manager : ResearchManager = $ResearchManager
@onready var income_manager : IncomeManager = $IncomeManager
@onready var end_of_turn_manager = $EndOfTurnManager



#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	_setup.call_deferred()
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func phase_setup():
	setup_manager.perform()
	
	
func phase_population_increase():
	population_increase_manager.perform()
	
	
func phase_resource():
	gain_resource_manager.perform()
	
	
func phase_population_distribution():
	pass
	

func phase_gain_leader():
	gain_leader_manager.perform()
	
	
func phase_harvest():
	harvest_manager.perform()
	

func phase_disaster_check():
	pass
	# TODO
	

func phase_upkeep():
	upkeep_manager.perform()
	

func phase_war():
	pass
	
	
func phase_trade():
	pass
	
	
func phase_build():
	build_manager.perform()
	
	
func phase_research():
	research_manager.perform()
	
	
func phase_income():
	income_manager.perform()
	
	
func phase_end_of_turn():
	end_of_turn_manager.perform()
	
	

# -- 17 private methods
func _setup():
	setup_manager.setup(self)
	gain_culture_manager.setup(self)
	population_increase_manager.setup(self)
	gain_resource_manager.setup(self)
	population_distribution_manager.setup(self)
	gain_leader_manager.setup(self)
	harvest_manager.setup(self)
	upkeep_manager.setup(self)
#	trade_manager_wip.setup(self)
#	war_manager_wip.setup(self)
	build_manager.setup(self)
	research_manager.setup(self)
	income_manager.setup(self)
	end_of_turn_manager.setup(self)
	
# -- 18 signal listeners
# -- 19 innerclasses

