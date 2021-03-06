#remove the Harvestcraft Salt
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var prefEntry = [
  <bewitchment:salt>
] as IItemStack[];

var prefOre = [
  <ore:dustSalt>,
  <ore:itemSalt>,
  <ore:foodSalt>
] as IOreDictEntry[];

var prefRemove = [
  <harvestcraft:saltitem>,
  <animania:salt>
] as IItemStack[];

#remove recipies
recipes.remove(prefRemove[0]);
recipes.remove(prefRemove[1]);

#readd recipies
recipes.addShapeless(prefEntry[0],[<ore:toolPot>,<ore:listAllwater>]);

#Conversion Recipes
recipes.addShapeless(prefEntry[0],[prefRemove[0]]);
recipes.addShapeless(prefEntry[0],[prefRemove[1]]);

#Cleaning Function
for removedItem in prefRemove{
  #Clean Ore dictionary
  for oreDictEntry in prefOre{
    #if(oreDictEntry has removedItem){
    #  oreDictEntry.remove(removedItem);
    #}
  }
  #Clean up in JEI
  mods.jei.JEI.hide(removedItem);
  mods.jei.JEI.addDescription(removedItem,"This item has been deprciated in this modpack, place in a crafting table to get a more useful version");
}
