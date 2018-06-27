#There are a lot of nuggets
var ironNugget = <ore:nuggetIron>;

#remove our "Other Nuggets" from the OreDict
ironNugget.remove(<thaumcraft:nugget:0>);
ironNugget.remove(<immersiveengineering:metal:29>);
ironNugget.remove(<minecraft:iron_nugget>);

#remove iron nugget recipies
recipes.remove(<immersiveengineering:metal:29>);
recipes.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:iron_nugget>);
furnace.addRecipe(<embers:nugget_iron>,<rustic:dust_tiny_iron>,0.1);

#Fix Rustic Condenser recipies
var hasteElixerBonus = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]});
var hasteElixerBase = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]});
var hasteElixerLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]});
mods.rustic.Condenser.removeRecipe(hasteElixerBase);
mods.rustic.Condenser.removeRecipe(hasteElixerLong);
mods.rustic.Condenser.removeRecipe(hasteElixerBonus);
mods.rustic.Condenser.addRecipe(hasteElixerBase,null,[<minecraft:redstone>,<embers:nugget_iron>,<rustic:core_root>]);
mods.rustic.Condenser.addRecipe(hasteElixerLong,<rustic:horsetail>,[<minecraft:redstone>,<embers:nugget_iron>,<rustic:core_root>]);
mods.rustic.Condenser.addRecipe(hasteElixerBonus,<rustic:marsh_mallow>,[<minecraft:redstone>,<embers:nugget_iron>,<rustic:core_root>]);

#Add "Transition" recipies
recipes.addShapeless(<embers:nugget_iron>,[<thaumcraft:nugget:0>]);
recipes.addShapeless(<embers:nugget_iron>,[<immersiveengineering:metal:29>]);
recipes.addShapeless(<embers:nugget_iron>,[<minecraft:iron_nugget>]);
recipes.addShaped(<minecraft:iron_ingot>,[
  [ironNugget,ironNugget,ironNugget],
  [ironNugget,ironNugget,ironNugget],
  [ironNugget,ironNugget,ironNugget]
  ]);

#Iron Plate Related
var ironPlate = <ore:plateIron>;

ironPlate.remove(<immersiveengineering:metal:39>);
ironPlate.remove(<thaumcraft:plate:1>);

recipes.remove(<thaumcraft:plate:1>);
recipes.remove(<immersiveengineering:metal:39>);

recipes.addShapeless(<embers:plate_iron>,[<immersiveengineering:metal:39>]);
recipes.addShapeless(<embers:plate_iron>,[<thaumcraft:plate:1>]);

mods.immersiveengineering.MetalPress.removeRecipe(<thaumcraft:plate:1>);
mods.immersiveengineering.MetalPress.addRecipe(<embers:plate_iron>,<minecraft:iron_ingot>,<immersiveengineering:mold:0>,2400);

#hide it all in JEI
mods.jei.JEI.hide(<thaumcraft:nugget:0>);
mods.jei.JEI.hide(<immersiveengineering:metal:29>);
mods.jei.JEI.hide(<immersiveengineering:metal:39>);
mods.jei.JEI.hide(<thaumcraft:plate:1>);
mods.jei.JEI.hide(<minecraft:iron_nugget>);
