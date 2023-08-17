# -- 01 @tool
# -- 02 class_name
class_name DisasterManager

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
func perform():
	var dice_roll = DiceRoller.roll("1d6").result
	if dice_roll == 1:
		_execute_disaster()


# -- 17 private methods
func _execute_disaster():
	var die_roll = DiceRoller.roll("1d%d" % DisastersTable.DATA.size()).result
	var disaster = DisastersTable.DATA[die_roll-1]
	
	if not disaster.has("resource_lost"):
		print("XXX: DisasterManager disaster has no \"resource_lost\": ", disaster)
		return 
	
	match disaster.resource_lost.name:
		"population":
			var amount_parsed = _parse_population_amount(disaster.resource_lost.amount)
			_lose_population(amount_parsed)
			
		"gold":
			var amount_parsed = _parse_gold_amount(disaster.resource_lost.amount)
			_lose_gold(amount_parsed)
			
		"grain":
			var amount_parsed = _parse_grain_amount(disaster.resource_lost.amount)
			_lose_grain(amount_parsed)
			
		_:
			print("XXX: DisasterManager disaster no supported: ", disaster)


func _parse_population_amount(amount: String) -> int:
	if Utils.is_match(amount, DiceRoller.PATTERN):
		return DiceRoller.roll(amount).result
	else:
		print("XXX: DisasterManager, population amount no supported: ", amount)
		return 0
		
		
func _parse_gold_amount(amount: String) -> int:
	var percentage = _parse_percentage_amount(amount)
	var gold = _data_manager.get_gold()
	var gold_amount = floor((percentage * gold) / 100.0)
	return gold_amount
	
	
func _parse_grain_amount(amount: String) -> int:
	var percentage = _parse_percentage_amount(amount)		
	var grain = _data_manager.get_grain()
	var grain_amount = floor((percentage * grain) / 100.0)
	return grain_amount
	
	
func _parse_percentage_amount(amount: String) -> int:
	var matches = Utils.matches(amount, "^(\\d+)%$")
	if matches.size() < 2:
		print("XXX: DisasterManager, percentage not accepted" % amount)
		return 0
		
	return int(matches[1])


func _lose_population(amount: int):
	print("XXX: DisasterManager._lose_population(%d)" % amount)
	if amount > _data_manager.get_total_population():
		print("XXX DisasterManager, population lose bigger than population: %d, %d" % [amount, _data_manager.get_total_population()])
		amount = _data_manager.get_total_population()
		
	for i in amount:
		_lose_random_citizen()
		
	
func _lose_random_citizen():
	var keys_not_empty = _data_manager.get_population().keys().filter(func(e): return _data_manager.get_population()[e] > 0)
	var key = Utils.sample(keys_not_empty)
	_data_manager.modify(key, -1)
	
	
func _lose_gold(amount):
	print("XXX: DisasterManager._lose_gold(%d)" % amount)
	_data_manager.modify_gold(-amount)
	
	
func _lose_grain(amount):
	print("XXX: DisasterManager._lose_grain(%d)" % amount)
	_data_manager.modify_grain(-amount)
	

# -- 18 signal listeners
# -- 19 innerclasses

