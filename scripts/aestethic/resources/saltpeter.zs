#better safe then Sorry
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

val prefDustNitrate = <abyssalcraft:nitre>;
val prefRemove = [
  <immersiveengineering:material:24>,
  <bloodmagic:component:24>
  ] as IItemStack[];
val prefOreDictDust = <ore:dustSaltpeter>;
val prefOreDictOre = <ore:oreSaltpeter>;

#Crafting Table Recipies
  #hammer + Ore x 2

#Grindstone Recipe
mods.astralsorcery.Grindstone.removeRecipe(prefRemove[0]);
mods.astralsorcery.Grindstone.addRecipe(<abyssalcraft:abynitore>,prefDustNitrate, 0.85);
mods.astralsorcery.Grindstone.addRecipe(<abyssalcraft:nitreore>,prefDustNitrate, 0.85);

#Alchemy table * 2
mods.bloodmagic.AlchemyTable.removeRecipe([<abyssalcraft:abynitore>,<bloodmagic:cutting_fluid:0>]);
mods.bloodmagic.AlchemyTable.removeRecipe([<abyssalcraft:nitreore>,<bloodmagic:cutting_fluid:0>]);
mods.bloodmagic.AlchemyTable.removeRecipe([<bloodmagic:component:22>,<bloodmagic:component:22>,<bloodmagic:component:21>]);

mods.bloodmagic.AlchemyTable.addRecipe(prefDustNitrate*2,[prefOreDictOre,<bloodmagic:cutting_fluid:0>],400,200,1);
mods.bloodmagic.AlchemyTable.addRecipe(prefDustNitrate*4,[<bloodmagic:component:22>,<bloodmagic:component:22>,<bloodmagic:component:21>],0,100,0);

#Crusher
mods.immersiveengineering.Crusher.removeRecipe(prefRemove[0]);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:sand>);

mods.immersiveengineering.Crusher.addRecipe(<minecraft:sand>,<ore:sandstone>,2400,prefDustNitrate,0.5);
mods.immersiveengineering.Crusher.addRecipe(prefDustNitrate,<ore:oreSaltpeter>,2400);

#recipe
recipes.remove(prefRemove[0]);
recipes.addShapeless(prefDustNitrate, [<ore:oreSaltpeter>,<immersiveengineering:tool:0>]);

#Cleaning Array
for item in prefRemove{
  recipes.addShapeless(prefDustNitrate,[item]);
  prefOreDictDust.remove(item);
  mods.jei.JEI.hide(item);
  mods.jei.JEI.addDescription(item,"This item has been replaced within the modpack, place in a crafting table to craft the replacement");
}
