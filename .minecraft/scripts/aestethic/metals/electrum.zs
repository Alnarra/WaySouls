import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val prefEntry = [
  <embers:ingot_electrum>,
  <embers:plate_electrum>,
  <embers:nugget_electrum>,
  <embers:block_electrum>
] as IItemStack[];

val prefOre = [
  <ore:ingotElectrum>,
  <ore:plateElectrum>,
  <ore:nuggetElectrum>,
  <ore:blockElectrum>
] as IOreDictEntry[];

val prefRemove = [
  <immersiveengineering:storage:7>,
  <immersiveengineering:metal:7>,
  <immersiveengineering:metal:27>,
  <immersiveengineering:metal:37>
] as IItemStack[];

#Remove Recipies
recipes.remove(<immersiveengineering:storage_slab:7>);
recipes.remove(prefRemove[1]);
furnace.remove(prefRemove[1]);
mods.immersiveengineering.AlloySmelter.removeRecipe(prefRemove[1]);
mods.immersiveengineering.ArcFurnace.removeRecipe(prefRemove[1]);
recipes.remove(prefRemove[2]);
recipes.remove(prefRemove[3]);
mods.immersiveengineering.MetalPress.removeRecipe(prefRemove[3]);
recipes.remove(prefRemove[0]);

#Re-Add Recipe
recipes.addShaped(prefEntry[3],[
  [null,<immersiveengineering:storage_slab:7>,null],
  [null,<immersiveengineering:storage_slab:7>,null],
  [null,null,null]
]);
recipes.addShaped(<immersiveengineering:storage_slab:7>,[
  [null,null,null],
  [<ore:blockElectrum>,<ore:blockElectrum>,<ore:blockElectrum>],
  [null,null,null]
]);
furnace.addRecipe(prefEntry[0],<immersiveengineering:metal:16>,0.3);
mods.immersiveengineering.AlloySmelter.addRecipe(prefEntry[0],<ore:ingotGold>,<ore:ingotSilver>,2000);
mods.immersiveengineering.AlloySmelter.addRecipe(prefEntry[0],<ore:dustGold>,<ore:dustSilver>,2000);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0]*2,<ore:oreGold>,null,200,512,[<ore:dustSilver>]);
mods.immersiveengineering.ArcFurnace.addRecipe(prefEntry[0]*2,<ore:dustGold>,null,100,512,[<ore:dustSilver>]);
recipes.addShapeless(prefEntry[1],[<immersiveengineering:sheetmetal:7>]);
mods.immersiveengineering.MetalPress.addRecipe(prefEntry[1],<ore:ingotElectrum>,<immersiveengineering:mold:0>,2400);

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
