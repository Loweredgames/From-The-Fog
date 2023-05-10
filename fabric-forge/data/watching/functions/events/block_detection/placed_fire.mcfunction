#revokeAdvancements
advancement revoke @s only watching:block_detection/fire

#createRaycastMarker
execute anchored eyes run summon marker ^ ^ ^ {Tags:["fireTrace"],NoGravity:1b}

#findFire
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^.5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^1 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^1.5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^2 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^2.5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^3 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^3.5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^4 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^4.5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found
execute anchored eyes run tp @e[type=marker,tag=fireTrace,tag=!found] ^ ^ ^5 ~ ~
execute as @e[type=marker,tag=fireTrace] at @s if block ~ ~ ~ minecraft:fire run tag @s add found

#foundFire
execute as @e[type=marker,tag=fireTrace,tag=found,tag=!logged] at @s if entity @e[type=marker,tag=fireTrace,tag=logged,distance=..1] run kill @e[type=marker,tag=fireTrace,tag=logged,sort=nearest,limit=1]

#foundShrine
execute as @e[type=marker,tag=fireTrace,tag=found,tag=!logged] at @s if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ #watching:shrine_center if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~ ~-1 ~1 redstone_torch run tag @s add logged
execute at @e[type=marker,tag=fireTrace,tag=found] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ #watching:shrine_center if block ~1 ~-2 ~ gold_block if block ~-1 ~-2 ~ gold_block if block ~ ~-2 ~1 gold_block if block ~ ~-2 ~-1 gold_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~1 ~-1 ~ redstone_torch if block ~-1 ~-1 ~ redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~ ~-1 ~1 redstone_torch as @s at @s run function watching:events/found_shrine

#foundOldHerobrineModShrine
execute as @e[type=marker,tag=fireTrace,tag=found,tag=!logged] at @s if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ netherrack if block ~ ~-3 ~ gold_block if block ~ ~-4 ~ gold_block run tag @s add logged
execute at @e[type=marker,tag=fireTrace,tag=found] if block ~ ~-1 ~ netherrack if block ~ ~-2 ~ netherrack if block ~ ~-3 ~ gold_block if block ~ ~-4 ~ gold_block run function watching:events/found_shrine
