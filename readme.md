Wayward Souls
===========

Info
------------
Current Version: 	0.0.6

Minecraft Version: 	1.1.12

Forge Version: 14.23.5.2768

Modpack Author:		Alnarra

Issues:				https://github.com/fullphaser/WaySouls/issues

Discord:			https://discord.gg/hZp7sfh

### Description
------------
They say in a more ancient time that there were great and powerful spirits that guided the path of those who walked the square world. That there was a time when the very essence of magic is what controlled the living and the damned. Allow me to be your guide on an adventure to control the very nature of magic itself! We will walk amongst the stars and the depths of all the realms of hell. No land is without our touch! Join me as my apprentice as I teach you... the ways of magic

Wayward Souls is a light Modpack with a focus on teaching newer and younger players the various ways to progress through a number of popular magical mods. The intention is to provide the player with a simple and understandable aesthetic that isn't too cluttered with overlap between the various mods and ensures relative stability and compatibility while trying to also ensure that the various component mods remain up to date in coordination with mod authors.

Inspired by Mage Quest and Minecraft Mage, the idea is to try and leave AS MUCH of the core Minecraft philosophy intact while adding new layers of adventure and difficulty. To help the player along a quest book (Provided through the Better Questing series of mods) is also provided.

Mods
----------
### Core Mods
	- Abyssal Craft
	- Astral Sorcery
	- Blood Magic
	- Botania
	- Embers
	- Immersive Engineering
	- Roots
	- Thaumcraft
	- Nature's Aura

### Library Mods
	- MTLib
	- Chameleon
	- Baubles
	- AutoRegLib
	- GuideAPI
	- Forgelin
	- libex

### Helper Mods
	- Waystones
	- Storage Drawers
	- Rustic
	- Ruins Spawning System
	- Roguelike Dungeons
	- Quark
	- Gravestone Mob
	- FastLeafDecay
	- Backpacks
	- Simple Bed Rolls
	- Chisel
	- Nature's Compass
	- Resurrect Complex
	- Battletowers
	- NetherEx
	- Cooking for Blockheads
	- Pam's Harvestcraft
	- Animania
	- EnderZoo
	- Reliquery
	- Totemic
	- Realbench
	- Nutrition
	- Iron Backpacks
	- Soot
	- Millénaire
	- Akashic Tome

### UI Mods
	- Waila
	- Waila Harvestability
	- Just Enough Items
	- Just Enough Resouces
	- More Overlays
	- JourneyMap
	- Dynamic Surroundings
	- Applieskin
	- Better Foliage
	- ThaumicJEI
	- Mouse Tweaks
	- Clumps
	- RPG Hud
	- FoamFix

### Mod Pack Related
	- Resource Loader
	- Open Eye
	- FTBLib
	- FTBUtilities
	- CustomMainMenu
	- Better Questing		
	- Standard Expansion
	- Better Questing - Quest Book
	- CraftTweaker2  
	- Morpheus
	- ModTweaker
	- Loottweaker
	- AbyssalCraft Integration


Changelog
============

Patch 0.0.7
-------------
### Description
This particular update is intended to take a more serious look at the quest book and some of the more problematic mods including totemic, abyssalcraft, and roots. The truth is that I wanted to tackle each of these but they all present their own unique difficulties whent it comes to quest surrounding them. As such I've tuned back the modification made to Totemic's central element opting to leave the mod intact. In addition this will begin to work on the abyssalcraft quest line. I will not touch the roots quest line until the newer version of the mod is published.

In addition to that, I will be working to try and include "Out of Character" information for each and every quest. This can include a number of things including why the quest exist in the first place, or how to accomplish the quest (as some can be more difficult to understand then others). I'm MOSTLY settled on the mods that are in place and feel comfortable simply updating them.

As development will now be handled through the twitch interface, you can assume that all mods are updated as updates become available.

This will be created as a new branch of the Github repo to help separate it.
### Mods Added:
_Core Mods_

	- Nature's Aura

_Helper Mods_

	- Millénaire
	- Akashic Tome 
### Mods Updated
_Helper Mods_

	- Nutrition
### Mods Removed:

### Quest:
	- Added Questline for Animania
	- Quest:
		- "The Ultimate Compass" now retrieval vs crafting (Fixes Issue#1)
		- "Let the ritual...begin" now retrieval vs crafting (Fixes Issue#1)
		- "The man with the Golden Ticket" Now correctly associated with Golden Bone Hoe
### Configuration
	- Animania told not to spawn bee hives
	- AbyssalCraft will no longer spawn demon animals at spawn, it was rather rude.

### Scripting
	- Animania Hive recipe altered to use Harvestcraft queen bee rather then wild hive 	

Version 0.0.6
-------------
### Description
This patch is intended to clean up a lot of the chest that were left laying around the world so that there is more consistency among loot (Copper / Tin / etc.) in addition I wanted to make sure each core mod added a bit to the overall loot table to accomodate this chest.zs has been created and the Loottweaker mod installed. In addition it appears I was totally incorrect about Rustic not having support for the condenser, as such we now only have one type of bee in the world and the "Southern" bee has been removed.

The metals have been singled down to a single mod, legacy recipes have been left in place in the event one needs to transition from one to another. (eg immersive engineering copper plates no longer count as copper plates; however, they have a recipe that can convert them directly to ember's copper plates).

Plates have been balanced (including thaumcraft plates) requiring at minimum that you have a hammer from either immersive engineering or embers. In addition Totemic's whittling knife, because of it's ability to craft a small range beacon has had it's recipe reworked to require interacting with the other mods in the pack.

### Modpack Core
	- Updated to Forge vs Version 14.23.5.2768
### Config Changes
	- Loading screen made a little more calming
	- Turned off rustic bee generation
	- Changing loot configuration for Ressurect Complex structures to better reflect loot from the modpack and encourage exploration.
	- updated Battletowers loot
	- Turned off tin, Uranium, nickel, and few other chisel patterns that weren't relevant to help cut down on texture load times
	- turned off limestone generation (Quark already does it).
### Mod's Added
_Library_

		-Forgelin
		-Libex
_Helper_

		- Soot
_Modpack_

		- Loottweaker
		- Abyssalcraft Integration
### Mod's Updated
_Core_

		- Abyssalcraft
		- Blood Magic
		- Astral Sorcery
		- Thaumcraft
		- Immersive Engineering
		- Botania
_Library_

		- Connected Textures Mod
		- FTB Lib
		- AutoRegLib
		- GuideAPI
_Helper_

		- Storage Drawers
		- Rustic
		- Animania
		- Battletowers
		- Chisel
		- Cooking for Blockheads
		- Gravestone Mob
		- NetherEx
		- Quark
		- Reliquery
		- Totemic
		- Rustic
		- Waystones
_UI_

		- Clumps
		- JEI
		- Just enough Resources
		- Better Foliage
		- Dynamic Surroundings
		- More Overlays
		- Mouse Tweaks
		- ThaumicJEI
_Modpack_

		- Crafttweaker
		- Better Questing
		- Standard Expansion
		- FTB Utilities
		- ModTweaker
### Mod's Removed

### Questing
	-Altered Ember's copper quest to now focus on lead instead (Also introducing the hammer). 	
	-Added a Totemic Questline
	-The simplicity of farming now accepts any fruit tree
### Scripting
	- Removed the renaming of the rustic bees and simply made it so Harvescraft bee related items would work  
	- Unified metal ingots / blocks /  Nuggets / Plates so that all machines only produce one type
	- Crusher has chance to make copper instead of nickel with Iron ore.
	- Nickel removed in it's entirety (If you have any left feel free to throw it away)
	- Fixed loot generation so that there isn't such a wide variety of metals in the chest.
	- Balanced all plates in the game to require a hammer and a single ingot (or a stamper / metal press).
	- Vaccum tube recipie corrected to use silver instead of nickel

Version 0.0.5
-------------

### Description
This patch is intended to clean up a lot of the useless underground / ore clutter that was taking place. I noticed that a lot of the ores either utterly didn't serve a purpose, or that they were one off ores that had a single recipie. I've put a lot heavier emphasis on silver as a result. In addition I've added some baseline quest to help players get started on a number of quest.

Infernal mobs was proving during playtesting to be iincredibly frustrating and there was no way I could make use of it without some form of griefing or simply feeling like in the early stages the player would be left hiding for their lives. This behavior was not intended. The Khndrel Keght (Dirt slime) was also removed as it felt like a silly punishment for using a non shovel to clear dirt

With rustic lacking support for Modtweaker in regards to alchemy, it is difficult to clean up the bee issue, and so the "Southern" bees need remain. Embers and Abyssalcraft's lack of support also leaves a few stray recipies here and there.

Totemic has been added as a small support mod because I believe it fit the theme, and realbench is a QoL improvement. Nutrtion is intended to help reward the player

### Modpack Core
	- Fixed the resource pack not being shipped with the client version (Whoopsie daisy)

### Config Changes
	- Turned off Tomato / Chili Pepper generation for Harvestcraft (so Rustic can handle them)
	- Turned of RPG Hud Compass and Entity inspect
	- Toned down Abysallcraft biome generation by half (this should be as low as it can possibly go)
	- Turned off Khndrel Keght (Dire slime) from enderzoo
	- Turned off Bronze, Nickel from Embers
	- Turned off Thaumcraft Quartz Generation (Embers makes more then enough).
	- Turned off Uranium Ore generation
	- Prevented market from selling animals that can't spawn

### Mod's Added
_Helper_

		- Totemic
		- Realbench
		- Nutrition

### Mods Updated
_Core_

		- Abyssal Craft
		- Astral Sorcery

_Library_

		- AutoRegLib
		- FTBLib

_Helper_

		- Reliquery
		- Quark
_UI_

		- JEI
		- Clumps

_Modpack_

		- FTBUtilities

### Mod's Removed
_Library_

		- B.A.S.E

_Helper_

		- Infernal Mobs

### Questing
	- Added images for quest booklet
	- Made a number of small updates to try and correct issues with the quest booklet
	- Added 100+ Quest to help the player begin to settle in
 	- Bug where quest book was sent in edit mode should now be corrected
	- Numerous quest updated / rewards changed / etc.

### Scripting
	- Removed Uranium from JEI / Recipies where possible
	- Removed Tin from JEI / Recipies where possible
	- Removed Mithril from JEI
	- Removed Constantan from JEI / Recipies where possible
	- Substituded Electrum for the two recipie which requires Constantan
	- Substituded Silver in the off chance that Tin is neede din Abyssalcraft
	- Changed Apple Juice recipie to not drop apple seeds
	- Removed references to Pam's Grapes / Tomatoes / Chilli Peppers

### Modpack
	- Github profile page updated.

Version 0.0.4
-------------
### Core Changes
	- Forge Updated to 14.23.4.2705

### Config Changes
	- Shoggoths are no longer allowed to spawn outside of their little lairs
	- Told immersive engineering excavators not to mine up immersive engineering ores because I think they're ugly
	- Turned Harvestcraft bee's back on
	- Told Chisel to turn off it's overwold Basalt Generation

### Mods Added
_Core_

	- Blood Magic
_Library_

	- GuideAPI
_Helper_

	- Nature's compass
	- Reliquery
_UI_

	- Thaumic JEI
			* Thaumic JEI seems obvious in retrospect

### Mods Updated
_Core_

	-Thaumcraft
	-Astral Sorcery

_Library_

	-MTLib
	-FTBLib
	-CTM
	-Base

_Helper_

	-Quark
	-Iron Backpacks
	-Cooking for Blockheads

_UI_

	-JEI
	-Hwyla
	-Foamfix (now Lawful)
	-Dyanmic Surroundings

_Modpack Related_

	-FTBUtillities
	-Standard Expansion
	-Better questing

### Mods Removed
_Library_

	-LLibrary

_Helper_

	-Ice and Fire
		* Ice and Fire / LLibrary were both demonstrating unwanted behaviors, in addition while they added fauna to the game, they didn't integrate as well as I would have liked with the overall nature of the game.

### Questing

	-Fixed a key quest to allow players to progress through the main quest chain
	-Added a number of other quest in a new chapter called advance, to help walk the players through growing netherwart, chest, and the like.

### Scripting

	- The rustic bees now have a southern twang to them to make them easier to identify
	- Added Basalt variations to Chisel so you can switch back and forth if you so deisre.

Version 0.0.3
-------------
### Core Changes
	- Forge updated to 14.23.3.2655
### Config Changes
	- Lowered Overall Fire / Ice structuer spawn chance
	- Made the world more resilliant to Shoggoth's
	- Made Ooze a little less tainty
	- Turned off Dynamic Surroundings overlays, more overlays does it better
	- Made Infernal Mobs slightly less annoying
	- turned off bee generation on the Pam's side
	- Scripted in a cross over recipie for honeycomb
	- Told Battletowers to cool it out on generation of structures
	- Player now starts with a simple quest book

### Updated All mods to their most recent builds

### Mods Added
_Core_

	- Thaumcraft 6 [Because DUH]
_Library_

	- BASE
_Helper_

	- Resurect Complex
	- Battletowers
	- NetherEx
	- Cooking for Blockheads
	- Pam's Harvestcraft
	- Animania
	- Ice and Fire
	- Infernal Mobs
_UI_

	- Mouse Tweaks
	- Clumps
	- RPG Hud
	- FoamFix

_Modpack Related_

	- Better Questing		
	- Standard Expansion
	- Better Questing - Quest Book
	- Morpheus
	- ModTweaker

### Mods Removed
_Core_

	- Wizardry (Feels incomplete)

_Library_

	- AppleCore (Would only be needed if I wanted to futz with food values and I don't)
	- Malisis Core

_Helper_

	- Backpacks
	- Malisis Door
	- Malisis Blocks
	- Openblocks Elevator
	- Simple Camp Fire
	- Elevators

### Questing

By making use of Better questing the first chapter for the modpack has been added including almost 40 quest to help the player on the path to exploring all of the game's core mods.


Version 0.0.2
--------------
### Core Changes

	-Version Set to 12.2.2
	-Forge Version Set to 1.12.2-14.23.1.2574 (Custom)

### Config Changes

	- Chisel told not to generate Marble

### Mods Added

	- Malisis Door
	- Malisis Blocks
	- Chisel

### Mods Updated

_Core_

	- Botania
	- AbyssalCraft
	- Immersive Engineering
	- Astral Sorcery
	- Roots 2
	- Embers

_Library_

	- AutoRegLib
	- Applecore
	- MTLib
	- FTB Lib

_Helper_

	- Backpacks
	- Openblocks Elevator
	- Storage Drawers
	- Waystones
	- Enderzoo (Was causing Server side crashes)
	- Gravestone Mod
	- Quark
	- Rustic
	- Roguelike Dungeons

_UI_

	- Journemyap
	- Dynamic Surroundings
	- JEI
	- JER
	- Waila
	- Waila Harvestability
	- AppleSkin



_Modpack Related_

	- FTB Utils
	- Custom main Menu
	- Craftweaker 2
	- Resource Loader


Version 0.0.1
--------------

### Config Changes
	- Decreased Abyssal craft biome Creation from 5 in 100 to 2 in 100
	- Prevented Immersive engineering from spawning ore that Embers spawns
	- Prevented Quark from spawning Marble
	- Turned off Warp / Home commands in FTBUtils
	- Turned off Gravestone's Death Note
	- Disabled Waystone XP Requirement

### Scripting Alterations
	- added aestetic.zs
