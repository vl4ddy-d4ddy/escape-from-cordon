extends Resource
class_name Item_Weapon

# Visual Stats
@export_category("Visual Stats")

@export var id : String 
@export var name : String
@export var description : String
@export var texture_path : String
var texture : Texture

# Script Stats
@export_category("Script Stats")

@export var stats : Dictionary = {
    "fire_rate": 0
}
@export var ammo : Dictionary = {
    "caliber": "",
    "damage": 0,
    "penetration_tier": 0,
    "recoil": 0,
    "accuracy": 0
}
@export var mods : Dictionary = {
    "grip": {

    },
    "trigger": {

    },
    "frame": {

    },
    "barrel": {

    },
    "foregrip": {

    },
    "sight": {
        
    }
}
