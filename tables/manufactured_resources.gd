# -- 01 @tool
# -- 02 class_name
class_name ManufacturedResourcesTable

# -- 03 extends
extends Resource

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
const DATA = [
	{
		"name": "Earthenware",
		"requires" : ["Clay", "Pottery"]
	},
	{
		"name": "Cloth",
		"requires" : ["Fibers", "Textiles"]
	},
	{
		"name": "Weapons",
		"requires" : ["Iron", "Metal Working"] # TODO: or Bronze?
	},
	{
		"name": "Wine",
		"requires" : ["Fruits", "Brewing"]
	},
	{
		"name": "Jewelry",
		"requires" : ["Precious Metals", "Art"]
	},
	{
		"name": "Sculpture",
		"requires" : ["Stone", "Art"]
	},
	{
		"name": "Glass",
		"requires" : ["Brick", "Glassblowing"]
	},
	{
		"name": "Dyes",
		"requires" : ["Shellfish", "Dye Making"] # TODO: or Spices
	},
	{
		"name": "Medicinals",
		"requires" : ["Spices", "Medicine"]
	},
	{
		"name": "Leather",
		"requires" : ["Livestock", "Textiles"]
	},
	{
		"name": "Parchment",
		"requires" : ["Fibers", "Literacy"]
	}
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

