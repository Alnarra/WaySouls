import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

#Define the values we want to tinker with
val prefEntry = [
  <embers:plate_gold>,
  <immersiveengineering:metal:19>
] as IItemStack[];

val prefOre = [
  <ore:dustGold>,
  <ore:plateGold>
] as IOreDictEntry[];

val prefRemove = [
  <immersiveengineering:metal:40>,
  <bloodmagic:component:20>
] as IItemStack[];

#Remove Recipies
recipes.remove(prefRemove[0]);
furnace.remove(<minecraft:gold_ingot>,prefRemove[1]);
mods.immersiveengineering.MetalPress.removeRecipe(prefRemove[0]);
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:gold_ore>,<bloodmagic:cutting_fluid:0>]);

#Add Back Recipies
recipes.addShapeless(prefEntry[0],[<immersiveengineering:sheetmetal:10>]);
mods.immersiveengineering.MetalPress.addRecipe(prefEntry[0],<ore:ingotGold>,<immersiveengineering:mold:0>,2400);
mods.bloodmagic.AlchemyTable.addRecipe(prefEntry[1]*2,[<ore:oreGold>,<bloodmagic:cutting_fluid:0>],400,200,1);

#Transition Recipes
recipes.addShapeless(prefEntry[0],[prefRemove[0]]);
recipes.addShapeless(prefEntry[1],[prefRemove[1]]);

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
