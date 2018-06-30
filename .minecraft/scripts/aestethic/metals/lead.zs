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
  <immersiveengineering:metal:2>
] as IItemStack[];

#Transition Recipes
recipes.addShapeless(prefEntry[0],[prefRemove[3]]);
recipes.addShapeless(prefEntry[1],[prefRemove[0]]);
recipes.addShapeless(prefEntry[2],[prefRemove[2]]);
recipes.addShapeless(prefEntry[3],[prefRemove[1]]);

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
