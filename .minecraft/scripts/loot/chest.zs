#Remove Copper / Tin from chest
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

#Clean abyssalcraft entries
LootTables.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTables.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTables.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTables.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTables.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTables.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTables.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTables.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("abyssalcraft:copper_ingot");

#Add back "Correct Copper"
LootTables.getTable("minecraft:chests/village_blacksmith").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTables.getTable("minecraft:chests/stronghold_corridor").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTables.getTable("minecraft:chests/desert_pyramid").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);
LootTables.getTable("minecraft:chests/simple_dungeon").getPool("main").addItemEntryHelper(<embers:ingot_copper>, 7, 1, [Functions.setCount(1, 5)], []);

#Clean immersiveengineering
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").removeEntry("copper_ingot");
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").removeEntry("aluminium_ingot");
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").removeEntry("silver_nugget");
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").removeEntry("lead_nugget");
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").removeEntry("nugget_nickel");

#Add back "Correct Versions"
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").addItemEntryHelper(<embers:ingot_copper>, 10, 1, [Functions.setCount(1, 4)], []);
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").addItemEntryHelper(<embers:ingot_aluminum>, 10, 1, [Functions.setCount(1, 4)], []);
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").addItemEntryHelper(<embers:nugget_silver>, 7, 1, [Functions.setCount(1, 2)], []);
LootTables.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house").addItemEntryHelper(<embers:nugget_lead>, 9, 1, [Functions.setCount(1, 4)], []);
