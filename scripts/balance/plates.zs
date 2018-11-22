#This is to balance plates around a single recipie
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var plates = [
  <embers:plate_iron>,
  <embers:plate_gold>,
  <embers:plate_dawnstone>,
  <embers:plate_silver>,
  <embers:plate_lead>,
  <embers:plate_copper>,
  <embers:plate_aluminum>,
  <embers:plate_electrum>,
  <thaumcraft:plate:3>,
  <thaumcraft:plate:2>,
  <thaumcraft:plate:0>,
  <immersiveengineering:metal:38>
] as IItemStack[];

var ingots = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <embers:ingot_dawnstone>,
  <embers:ingot_silver>,
  <embers:ingot_lead>,
  <embers:ingot_copper>,
  <embers:ingot_aluminum>,
  <embers:ingot_electrum>,
  <thaumcraft:ingot:1>,
  <thaumcraft:ingot:0>,
  <thaumcraft:ingot:2>,
  <immersiveengineering:metal:8>
] as IItemStack[];

#First remove any remaining plate recipies
var i = 0;
for item in plates {
  recipes.remove(item);
  recipes.addShapeless(item, [ingots[i],<immersiveengineering:tool:0>]);
  recipes.addShapeless(item, [ingots[i],<embers:tinker_hammer>]);
  if(i > 7)
  {
    mods.embers.Stamper.add(item,null,<embers:stamp_plate>,ingots[i]);
  }
  i = i + 1;
}

#Fix Sheetmetal for steel
recipes.addShapeless(plates[11],[<immersiveengineering:sheetmetal:8>]);

mods.jei.JEI.addDescription(<immersiveengineering:tool:0>,"This tool can grind up metals into dust or shape them into plates, but the process can be taxing on the tool");
mods.jei.JEI.addDescription(<embers:tinker_hammer>,"The heavy lead head makes this tool unsuited for grinding metals into dust, but it also makes it more capable of easily making plates without taking damage");
