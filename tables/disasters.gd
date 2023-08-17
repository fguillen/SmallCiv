# -- 01 @tool
# -- 02 class_name
class_name DisastersTable

# -- 03 extends
extends Resource

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
const DATA = [
	{
		"name": "Flood", 
		"effects": "Lose 1 Random Resource",
		"resource_lost": {
			"name": "natural_resource",
			"amount": 1
		}
	},
	{
		"name": "Earthquake", 
		"effects": "1d6 or 2d6 if you have Architecture",
		"resource_lost": {
			"name": "population",
			"amount": "1d6 (or 2d6 if you have Architecture)"
		}
	},
	{
		"name": "Volcano", 
		"effects": "Lose 1 Random City",
		"resource_lost": {
			"name": "city",
			"amount": 1
		}
	},
	{
		"name": "Pirates", 
		"effects": "Lose half your gold reserve",
		"resource_lost": {
			"name": "gold",
			"amount": "50%"
		}
	},
	{
		"name": "Unrest", 
		"effects": "1d6",
		"resource_lost": {
			"name": "population",
			"amount": "1d6"
		}
	},
	{
		"name": "Civil War", 
		"effects": "War: Attacked by 1d6 Armies: They take a random city if they win", # TODO
	},
	{
		"name": "Heresy", 
		"effects": "1d6 or 2d6 if you have Monotheism",
		"resource_lost": {
			"name": "population",
			"amount": "1d6 (or 2d6 if you have Monotheism)"
		}
	},
	{
		"name": "Anarchy", 
		"effects": "1d6",
		"resource_lost": {
			"name": "population",
			"amount": "1d6"
		}
	},
	{
		"name": "Epidemic", 
		"effects": "3d6",
		"resource_lost": {
			"name": "population",
			"amount": "3d6"
		}
	},
	{
		"name": "Famine", 
		"effects": "Lose half of your food reserve",
		"resource_lost": {
			"name": "grain",
			"amount": "50%"
		}
	},
	{
		"name": "Uprising", 
		"effects": "War: Attacked by 1d6 Armies: They take 2d6 populations if they win", # TODO
	},
	{
		"name": "Corruption", 
		"effects": "Lose all gold",
		"resource_lost": {
			"name": "gold",
			"amount": "100%"
		}
	},
	{
		"name": "Drought", 
		"effects": "Lose half of your food reserve",
		"resource_lost": {
			"name": "grain",
			"amount": "50%"
		}
	},
	{
		"name": "Storms", 
		"effects": "1d6 (Navies first)",
		"resource_lost": {
			"name": "population",
			"amount": "1d6 (Navies first)" # TODO
		}
	},
	{
		"name": "Sands of Time", 
		"effects": "Lose 1 random Wonder",
		"resource_lost": {
			"name": "wonder",
			"amount": 1
		}
	},
	{
		"name": "Mad King", 
		"effects": "2d6",
		"resource_lost": {
			"name": "population",
			"amount": "2d6"
		}
	},
	{
		"name": "Pestilence", 
		"effects": "Lose half of your food reserve",
		"resource_lost": {
			"name": "grain",
			"amount": "50%"
		}
	},
	{
		"name": "Mutiny", 
		"effects": "2d6 (Military Units first)",
		"resource_lost": {
			"name": "population",
			"amount": "2d6 (Military Units first)" # TODO
		}
	},
	{
		"name": "Barbarians", 
		"effects": "War: Attacked by 1d6 Armies:Die", # TODO
	},
]



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
# -- 17 private methods
# -- 18 signal listeners
# -- 19 innerclasses

