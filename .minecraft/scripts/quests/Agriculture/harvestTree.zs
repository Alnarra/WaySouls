import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var harvestcraftTrees = [
  <harvestcraft:almond_sapling>,
  <harvestcraft:apple_sapling>,
  <harvestcraft:apricot_sapling>,
  <harvestcraft:avocado_sapling>,
  <harvestcraft:banana_sapling>,
  <harvestcraft:cashew_sapling>,
  <harvestcraft:cherry_sapling>,
  <harvestcraft:chestnut_sapling>,
  <harvestcraft:cinnamon_sapling>,
  <harvestcraft:coconut_sapling>,
  <harvestcraft:date_sapling>,
  <harvestcraft:dragonfruit_sapling>,
  <harvestcraft:durian_sapling>,
  <harvestcraft:fig_sapling>,
  <harvestcraft:gooseberry_sapling>,
  <harvestcraft:grapefruit_sapling>,
  <harvestcraft:lemon_sapling>,
  <harvestcraft:lime_sapling>,
  <harvestcraft:mango_sapling>,
  <harvestcraft:maple_sapling>,
  <harvestcraft:nutmeg_sapling>,
  <harvestcraft:olive_sapling>,
  <harvestcraft:orange_sapling>,
  <harvestcraft:papaya_sapling>,
  <harvestcraft:paperbark_sapling>,
  <harvestcraft:peach_sapling>,
  <harvestcraft:pear_sapling>,
  <harvestcraft:pecan_sapling>,
  <harvestcraft:peppercorn_sapling>,
  <harvestcraft:persimmon_sapling>,
  <harvestcraft:pistachio_sapling>,
  <harvestcraft:plum_sapling>,
  <harvestcraft:pomegranate_sapling>,
  <harvestcraft:spiderweb_sapling>,
  <harvestcraft:starfruit_sapling>,
  <harvestcraft:vanillabean_sapling>,
  <harvestcraft:walnut_sapling>
] as IItemStack[];

var questFruitTree = <ore:questFruitTree>;

for item in harvestcraftTrees{
  questFruitTree.add(item);
}
