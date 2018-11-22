import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val prefEntry = [
  <embers:ingot_lead>,
  <embers:block_lead>,
  <embers:nugget_lead>,
  <embers:plate_lead>
] as IItemStack[];

val prefOre = [
  <ore:blockLead>,
  <ore:plateLead>,
  <ore:nuggetLead>,
  <ore:ingotLead>
] as IOreDictEntry[];

val prefRemove = [
  <immersiveengineering:storage:2>,
  <immersiveengineering:metal:32>,
  <immersiveengineering:metal:22>,
  <immersiveengineering:metal:2>,
  <thaumcraft:nugget:4>
] as IItemStack[];

#Removing Recipies
recipes.remove(prefRemove[0]);
recipes.remove(prefRemove[1]);
mods.immersiveengineering.MetalPress.removeRecipe(prefRemove[1]);
recipes.remove(prefRemove[2]);
recipes.remove(prefRemove[3]);
furnace.remove(prefRemove[3]);
mods.immersiveengineering.ArcFurnace.removeRecipe(prefRemove[3]);
recipes.remove(<immersiveengineering:storage_slab:2>);
recipes.remove(prefRemove[4]);

#Adding them Back
recipes.addShaped(prefEntry[1],[
  [null,<immersiveengineering:storage_slab:2>,null],
  [null,<immersiveengineering:storage_slab:2>,null],
  [null,null,null]
]);
recipes.addShapeless(prefEntry[3],[<immersiveengineering:sheetmetal:2>]);
mods.immersiveengineering.MetalPress.addRecipe(prefEntry[3],<ore:ingotLead>,<immersiveengineering:mold:0>,2400);
furnace.addRecipe(prefEntry[0]*2,<thaumcraft:cluster:5>,1);
furnace.addRecipe(prefEntry[0],<immersiveengineering:metal:11>,1);
furnace.addRecipe(prefEntry[0],<ore:oreLead>,1);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0]*2,<ore:oreLead>,<immersiveengineering:material:7>,200,512);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0],<immersiveengineering:metal:11>,null,100,512);
recipes.addShaped(<immersiveengineering:storage_slab:2>,[
  [null,null,null],
  [<ore:blockLead>,<ore:blockLead>,<ore:blockLead>],
  [null,null,null]
]);

#Transition Recipes
recipes.addShapeless(prefEntry[0],[prefRemove[3]]);
recipes.addShapeless(prefEntry[1],[prefRemove[0]]);
recipes.addShapeless(prefEntry[2],[prefRemove[2]]);
recipes.addShapeless(prefEntry[3],[prefRemove[1]]);
recipes.addShapeless(prefEntry[2],[prefRemove[4]]);

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
