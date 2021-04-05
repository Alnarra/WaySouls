#Remove Copper / Tin from chest
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

#Clean out the Bewitchment Silver
LootTweaker.getTable("bewitchment:chests/materials").getPool("materials").removeEntry("bewitchment:silver_ingot");
LootTweaker.getTable("bewitchment:chests/materials").getPool("materials").addItemEntryHelper(<embers:ingot_silver>, 1 , 1, [Functions.setCount(1,2)], []);

#Clean out the Gems
LootTweaker.getTable("bewitchment:chests/materials").getPool("materials").removeEntry("bewitchment:garnet");
LootTweaker.getTable("bewitchment:chests/materials").getPool("materials").removeEntry("bewitchment:opal");

#Clean abyssalcraft entries
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("abyssalcraft:copper_ingot");

#Add back "Correct Copper"
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);

#Clean immersiveengineering
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").removeEntry("copper_ingot");
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").removeEntry("aluminium_ingot");
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").removeEntry("silver_nugget");
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").removeEntry("lead_nugget");
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").removeEntry("nugget_nickel");

#Add back "Correct Versions"
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").addItemEntryHelper(<embers:ingot_copper>, 10, 1, [Functions.setCount(1, 4)], []);
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").addItemEntryHelper(<embers:ingot_aluminum>, 10, 1, [Functions.setCount(1, 4)], []);
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").addItemEntryHelper(<embers:nugget_silver>, 7, 1, [Functions.setCount(1, 2)], []);
LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0").addItemEntryHelper(<embers:nugget_lead>, 9, 1, [Functions.setCount(1, 4)], []);
