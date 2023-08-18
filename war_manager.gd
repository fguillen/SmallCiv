# -- 01 @tool
# -- 02 class_name
class_name WarManager
# -- 03 extends
extends PhaseManager

# -- 04 # docstring
#
# -- 05 signals
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
func perform_character_attack_random_army():
	var enemy_num_armies = DiceRoller.roll("6d6").result
	perform(enemy_num_armies, true)
		
	
func perform(enemy_num_armies: int, character_is_attacking: bool):
	var num_dice_character = _calculate_num_dice_character(enemy_num_armies, character_is_attacking)
	var num_dice_enemy = enemy_num_armies
	
	var character_dice_rolls = DiceRoller.roll("%dd6" % num_dice_character)
	var enemy_dice_rolls = DiceRoller.roll("%dd6" % num_dice_enemy)
	
	print("XXX: WarManager. character_roll: %s(%d), enemy_roll: %s(%d)" % [character_dice_rolls.rolls, character_dice_rolls.result, enemy_dice_rolls.rolls, enemy_dice_rolls.result])
	
	var character_num_ones = character_dice_rolls.rolls.count(1)
	var enemy_num_ones = enemy_dice_rolls.rolls.count(1)
	
	if character_is_attacking:
		if character_num_ones >= enemy_num_armies:
			print("XXX: WarManager. Character destroyed enemy")
		
		if enemy_num_ones >= _data_manager.get_army():
			print("XXX: WarManager. Enemy destroyed character")
			
	# TODO: are attacks made at the same time? 
	# TODO: are army loses affect the num of dice?
	
	
	if character_dice_rolls.result == enemy_dice_rolls.result:
		if character_is_attacking:
			print("XXX: WarManager. Character won")
		else:
			print("XXX: WarManager. Enemy won")
			
	else:			
		if character_dice_rolls.result > enemy_dice_rolls.result:
			print("XXX: WarManager. Character won")
		else:
			print("XXX: WarManager. Enemy won")
			

# -- 17 private methods
func _calculate_num_dice_character(enemy_num_armies: int, character_is_attacking: bool) -> int:
	var armies = _data_manager.get_army()
	var generals = _data_manager.get_leaders_by_kind("general").size()
	var has_military_doctrine = _data_manager.has_advance("Military Doctrine")
	var has_iron = _data_manager.has_natural_resource("Iron")
	var has_equestrian = _data_manager.has_advance("Equestrian")
	var has_siegecraft = _data_manager.has_advance("Siegecraft")
	var has_fortifications = _data_manager.has_advance("Fortifications")
	var has_shipbuilding = _data_manager.has_advance("Shipbuilding")
	var has_great_wall = false # _data_manager.has_wonder("Great Wall") # TODO
	
	var character_dice := 0
	character_dice += armies
	character_dice += generals
	character_dice += 1 if armies > enemy_num_armies else 0
	character_dice += 1 if has_military_doctrine else 0
	character_dice += 1 if has_iron else 0
	character_dice += 1 if has_equestrian else 0
	character_dice += 1 if has_siegecraft and character_is_attacking else 0
	character_dice += 1 if has_fortifications and not character_is_attacking else 0
	character_dice += 1 if has_shipbuilding else 0
	character_dice += 1 if has_great_wall and not character_is_attacking else 0
	
	print("XXX WcarManager._calculate_num_dice_character(): ", character_dice)
	
	return character_dice
	
	
	
	
# -- 18 signal listeners
# -- 19 innerclasses

