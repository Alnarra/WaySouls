import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//The ores and ingots we wish to use
var prefOre = [
  <embers:ore_silver>,
  <embers:ore_lead>,
  <embers:ore_copper>,
  <embers:ore_aluminum>,
] as IItemStack[];

var prefIngot = [
  <embers:ingot_silver>,
  <embers:ingot_lead>,
  <embers:ingot_copper>,
  <embers:ingot_aluminum>,
] as IItemStack[];

for i, item in prefOre {
  mods.astralsorcery.StarlightInfusion.addInfusion(item, prefIngot[i]*3, true, 0.7, 200);
}
