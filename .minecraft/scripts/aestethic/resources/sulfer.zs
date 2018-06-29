var prefDustSulfer = <immersiveengineering:material:25>;
var dustSulferOre = <ore:dustSulfur>;

#First remove our "False" Sulfers from the OreDict
dustSulferOre.remove(<soot:sulfur>);
dustSulferOre.remove(<abyssalcraft:sulfur>);
dustSulferOre.remove(<bloodmagic:component:23>);

#Add transition Recipies
recipes.addShapeless(prefDustSulfer,[<soot:sulfur>]);
recipes.addShapeless(prefDustSulfer,[<abyssalcraft:sulfur>]);
recipes.addShapeless(prefDustSulfer,[<bloodmagic:component:23>]);

#1 Dawnstone Anvil Recipie
var eitr = <soot:eitr>.withDamage(256);
mods.embers.DawnstoneAnvil.remove(null, <soot:sulfur>*2);
mods.embers.DawnstoneAnvil.add([prefDustSulfer*2], eitr ,null);

#1 Stamper recipie
mods.embers.Stamper.remove(<soot:sulfur>);
mods.embers.Stamper.add(prefDustSulfer, null, <embers:stamp_flat>, <soot:sulfur_clump>);

#1 Transmutation Recipies
mods.abyssalcraft.Transmutator.removeTransmutation(<abyssalcraft:crystal:2>);
mods.abyssalcraft.Transmutator.addTransmutation(<abyssalcraft:crystal:2>,prefDustSulfer,0.2);

#1 Materializer Recipies
mods.abyssalcraft.Materializer.removeMaterialization(<abyssalcraft:sulfur>);
mods.abyssalcraft.Materializer.addMaterialization(prefDustSulfer,[<abyssalcraft:crystal:2>]);

#Blood Magic Alter Recipie
mods.bloodmagic.AlchemyTable.removeRecipe([<minecraft:lava_bucket>]);
mods.bloodmagic.AlchemyTable.addRecipe(prefDustSulfer,[<minecraft:lava_bucket>],0,100,0);

#remove from JEI
mods.jei.JEI.hide(<soot:sulfur>);
mods.jei.JEI.hide(<abyssalcraft:sulfur>);
mods.jei.JEI.hide(<bloodmagic:component:23>);

#Add descriptions
mods.jei.JEI.addDescription(<soot:sulfur>,["This item's use has been removed by the modpack, place in a crafting table to convert to a more useful item."]);
mods.jei.JEI.addDescription(<abyssalcraft:sulfur>,["This item's use has been removed by the modpack, place in a crafting table to convert to a more useful item."]);
mods.jei.JEI.addDescription(<bloodmagic:component:23>,["This item's use has been removed by the modpack, place in a crafting table to convert to a more useful item."]);
