#stalkingSightingRules
execute if score true stalkingConfig matches 1 unless predicate watching:checks/is_night_check if predicate watching:chances/sighting_chances/rare_sighting_chance_day as @r at @s unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/stalking
execute if score true stalkingConfig matches 1 if predicate watching:checks/is_night_check if predicate watching:chances/sighting_chances/rare_sighting_chance_night as @r at @s unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/stalking
#creepingSightingRules
execute if score true creepingConfig matches 1 unless predicate watching:checks/is_night_check if predicate watching:chances/sighting_chances/rare_sighting_chance_day as @r at @s unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/creeping
execute if score true creepingConfig matches 1 if predicate watching:checks/is_night_check if predicate watching:chances/sighting_chances/rare_sighting_chance_night as @r at @s unless entity @e[type=armor_stand,tag=spread] unless entity @e[type=villager,tag=door_open] run function watching:events/sightings/creeping