# -- 01 @tool
# -- 02 class_name
class_name PhaseManager

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
var _game_manager : GameManager
var _data_manager : DataManager

# -- 11 onready variables
#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
# -- 15 remaining built-in virtual methods
# -- 16 public methods
func setup(game_manager: GameManager):
	_game_manager = game_manager
	_data_manager = game_manager.data_manager
	
	
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

