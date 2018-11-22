import crafttweaker.item.IItemStack;

#Values of our preferred objects
val prefSilverIngot = <embers:ingot_silver>;
val prefSilverNugget = <embers:nugget_silver>;
val prefSilverBlock = <embers:block_silver>;
val prefSilverPlate = <embers:plate_silver>;

#Values of our Ore Dictionary Items
val oreSilverIngot = <ore:ingotSilver>;
val oreSilverNugget = <ore:nuggetSilver>;
val oreSilverBlock = <ore:blockSilver>;
val oresilverPlate = <ore:plateSilver>;

#Array of everything we want to remove
val prefRemove = [
  <immersiveengineering:metal:3>,
  <immersiveengineering:metal:23>,
  <thaumcraft:nugget:3>,
  <immersiveengineering:metal:33>,
  <immersiveengineering:storage:3>,
  <immersiveengineering:ore:3>
] as IItemStack[];

#Remove Base Recipies
recipes.remove(prefRemove[0]);
recipes.remove(prefRemove[1]);
recipes.remove(prefRemove[2]);
recipes.remove(prefRemove[3]);
recipes.remove(prefRemove[4]);
recipes.remove(<immersiveengineering:storage_slab:3>);

#Remove Furnace Recipies
furnace.remove(prefRemove[0]);

#Remove Immersive Engineering Recipies
mods.immersiveengineering.ArcFurnace.removeRecipe(prefRemove[0]);
mods.immersiveengineering.MetalPress.removeRecipe(prefRemove[3]);

#remove Chisel Varient
#mods.chisel.Carving.removeVariation("chisel:blocksilver",prefRemove[4]); #Seems to work but causes error

#Re-Add Block Recipies
recipes.addShaped(prefSilverBlock,[
  [null,<immersiveengineering:storage_slab:3>,null],
  [null,<immersiveengineering:storage_slab:3>,null],
  [null,null,null]
  ]);
recipes.addShaped(<immersiveengineering:storage_slab:3>,[
  [null,null,null],
  [oreSilverBlock,oreSilverBlock,oreSilverBlock],
  [null,null,null]
  ]);

#Re-Add Furnace Recipies
furnace.addRecipe(prefSilverIngot,<immersiveengineering:metal:12>,0.7);
furnace.addRecipe(prefSilverIngot,<thaumcraft:cluster:4>,0.7);
furnace.addRecipe(prefSilverIngot,<ore:oreSilver>,0.7);

#Re-Add Immersive Engineering Recipies
mods.immersiveengineering.ArcFurnace.addRecipe(prefSilverIngot*2,<ore:oreSilver>,<immersiveengineering:material:7>,200,512);
mods.immersiveengineering.ArcFurnace.addRecipe(prefSilverIngot,<ore:dustSilver>,null,100,512);
mods.immersiveengineering.MetalPress.addRecipe(prefSilverPlate,<ore:ingotSilver>,<immersiveengineering:mold:0>,2400);

#Add Conversion Recipies
recipes.addShapeless(prefSilverIngot,[prefRemove[0]]);
recipes.addShapeless(prefSilverNugget,[prefRemove[1]]);
recipes.addShapeless(prefSilverNugget,[prefRemove[2]]);
recipes.addShapeless(prefSilverPlate,[prefRemove[3]]);
recipes.addShapeless(prefSilverBlock,[prefRemove[4]]);

#Remove from Ore Dictionary
oreSilverIngot.remove(prefRemove[0]);
oreSilverNugget.remove(prefRemove[1]);
oreSilverNugget.remove(prefRemove[2]);
oresilverPlate.remove(prefRemove[3]);
oreSilverBlock.remove(prefRemove[4]);

#Cleaning Array
for item in prefRemove{
  mods.jei.JEI.hide(item);
  mods.jei.JEI.addDescription(item,"This item has been replaced within the modpack, place in a crafting table to craft the replacement");
}
