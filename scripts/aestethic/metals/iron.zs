#There are a lot of nuggets
var ironNugget = <ore:nuggetIron>;

#remove our "Other Nuggets" from the OreDict
ironNugget.remove(<thaumcraft:nugget:0>);
ironNugget.remove(<immersiveengineering:metal:29>);

#remove iron nugget recipies
recipes.remove(<immersiveengineering:metal:29>);
furnace.addRecipe(<minecraft:iron_nugget>,<rustic:dust_tiny_iron>,0.1);

#Add "Transition" recipies
recipes.addShapeless(<minecraft:iron_nugget>,[<thaumcraft:nugget:0>]);
recipes.addShapeless(<minecraft:iron_nugget>,[<immersiveengineering:metal:29>]);
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

#This is a nickel related fix but affects the iron recipies
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:metal:18>);
mods.immersiveengineering.Crusher.addRecipe(<immersiveengineering:metal:18>, <ore:oreIron>, 2048, <immersiveengineering:metal:9>, 0.1);
