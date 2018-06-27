#unifying Copper

#Declare Variables
var copper = <ore:ingotCopper>;
var copperPlate = <ore:plateCopper>;
var blockCopper = <ore:blockCopper>;
var nuggetCopper =<ore:nuggetCopper>;

#Remove furnace recipes
furnace.remove(<abyssalcraft:copperingot>);
furnace.remove(<immersiveengineering:metal:0>);

#Add them back
furnace.addRecipe(<embers:ingot_copper>,<immersiveengineering:metal:9>,100);
furnace.addRecipe(<embers:ingot_copper>,<immersiveengineering:ore:0>,100);
furnace.addRecipe(<embers:ingot_copper>,<abyssalcraft:abycopore>,100);

#Remove / Readd ArcFurnace Recipie
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:0>);
mods.immersiveengineering.ArcFurnace.addRecipe(<embers:ingot_copper>,<immersiveengineering:metal:9>,null,100,512);

#Remove the Recipes
recipes.remove(<immersiveengineering:metal:20>);
recipes.remove(<immersiveengineering:metal:0>);
recipes.remove(<immersiveengineering:storage:0>);
recipes.remove(<immersiveengineering:metal:30>);
recipes.remove(<immersiveengineering:storage_slab:0>);
recipes.remove(<thaumcraft:nugget:1>);

#Add what we need back
recipes.addShapeless(<embers:block_copper>,[<immersiveengineering:storage:0>]);
recipes.addShapeless(<embers:nugget_copper>,[<immersiveengineering:metal:20>]);
recipes.addShapeless(<embers:ingot_copper>,[<abyssalcraft:copperingot>]);
recipes.addShaped(<embers:block_copper>,[
	[null,<immersiveengineering:storage_slab:0>,null],
	[null,<immersiveengineering:storage_slab:0>,null],
	[null,null,null]
	]);
recipes.addShapeless(<embers:plate_copper>,[<immersiveengineering:sheetmetal:0>]);
recipes.addShapeless(<embers:plate_copper>,[<immersiveengineering:metal:30>]);
recipes.addShaped(<immersiveengineering:storage_slab:0>*6,[
	[null,null,null],
	[blockCopper,blockCopper,blockCopper],
	[null,null,null]
	]);
recipes.addShapeless(<embers:nugget_copper>,[<thaumcraft:nugget:1>]);
recipes.addShapeless(<embers:ingot_copper>,[<immersiveengineering:metal:0>]);

#Remove OreDict References
copper.remove(<abyssalcraft:copperingot>);
copper.remove(<immersiveengineering:metal:0>);
copperPlate.remove(<immersiveengineering:metal:30>);
blockCopper.remove(<immersiveengineering:storage:0>);
nuggetCopper.remove(<thaumcraft:nugget:1>);
nuggetCopper.remove(<immersiveengineering:metal:20>);

#Clean up the Metal Press
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:30>);
mods.immersiveengineering.MetalPress.addRecipe(<embers:plate_copper>,copper,<immersiveengineering:mold:0>,2400);

#Hide things in JEI
mods.jei.JEI.hide(<immersiveengineering:ore:0>);
mods.jei.JEI.hide(<immersiveengineering:storage:0>);
mods.jei.JEI.hide(<immersiveengineering:metal:0>);
mods.jei.JEI.hide(<immersiveengineering:metal:20>);
mods.jei.JEI.hide(<immersiveengineering:metal:30>);
mods.jei.JEI.hide(<abyssalcraft:copperingot>);
mods.jei.JEI.hide(<thaumcraft:nugget:1>);
