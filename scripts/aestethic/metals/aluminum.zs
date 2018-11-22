import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val prefEntry = [
  <embers:ingot_aluminum>,
  <embers:plate_aluminum>,
  <embers:nugget_aluminum>,
  <embers:block_aluminum>
] as IItemStack[];

val prefOre = [
  <ore:ingotAluminum>,
  <ore:plateAluminum>,
  <ore:nuggetAluminum>,
  <ore:blockAluminum>
] as IOreDictEntry[];

val prefRemove = [
  <immersiveengineering:storage:1>,
  <immersiveengineering:metal:1>,
  <immersiveengineering:metal:21>,
  <immersiveengineering:metal:31>
] as IItemStack[];

#Remove Recipies
recipes.remove(<immersiveengineering:storage_slab:1>);
recipes.remove(prefRemove[1]);
furnace.remove(prefRemove[1]);
mods.immersiveengineering.ArcFurnace.removeRecipe(prefRemove[1]);
recipes.remove(prefRemove[2]);
recipes.remove(prefRemove[3]);
mods.immersiveengineering.MetalPress.removeRecipe(prefRemove[3]);
recipes.remove(prefRemove[0]);

#Re-Add Recipe
recipes.addShaped(prefEntry[3],[
  [null,<immersiveengineering:storage_slab:1>,null],
  [null,<immersiveengineering:storage_slab:1>,null],
  [null,null,null]
]);
recipes.addShaped(<immersiveengineering:storage_slab:1>,[
  [null,null,null],
  [<ore:blockAluminum>,<ore:blockAluminum>,<ore:blockAluminum>],
  [null,null,null]
]);
furnace.addRecipe(prefEntry[0],<immersiveengineering:metal:10>,0.3);
furnace.addRecipe(prefEntry[0],<ore:oreAluminum>,0.3);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0]*2,<ore:oreAluminum>,<immersiveengineering:material:7>,200,512);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0],<immersiveengineering:metal:10>,null,100,512);
recipes.addShapeless(prefEntry[1],[<immersiveengineering:sheetmetal:1>]);
mods.immersiveengineering.MetalPress.addRecipe(prefEntry[1],<ore:ingotAluminum>,<immersiveengineering:mold:0>,2400);

#Add materalization and Transmutation recipies to bring it in line with other metals
mods.abyssalcraft.Crystallizer.addSingleCrystallization(<embers:ore_aluminum>,<abyssalcraft:crystalshard:20>*4,0.1);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystal:20>,prefEntry[0],0.2);
mods.abyssalcraft.Materializer.addMaterialization(prefEntry[0],[<abyssalcraft:crystal:20>]);

#Transition Recipies
recipes.addShapeless(prefEntry[0],[prefRemove[1]]);
recipes.addShapeless(prefEntry[1],[prefRemove[3]]);
recipes.addShapeless(prefEntry[2],[prefRemove[2]]);
recipes.addShapeless(prefEntry[3],[prefRemove[0]]);

#Cleaning Function
for removedItem in prefRemove{
  #Clean Ore dictionary
  for oreDictEntry in prefOre{
    if(oreDictEntry has removedItem){
      oreDictEntry.remove(removedItem);
    }
  }
  #Clean up in JEI
  mods.jei.JEI.hide(removedItem);
  mods.jei.JEI.addDescription(removedItem,"This item has been deprciated in this modpack, place in a crafting table to get a more useful version");
}
