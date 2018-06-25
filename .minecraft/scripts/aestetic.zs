#getting us down to a single bee 

#Fix the Candles
recipes.remove(<rustic:candle>);
recipes.remove(<quark:candle:0>); 
recipes.addShaped(<rustic:candle>,[
	[null,<minecraft:string>,null],
	[null,<harvestcraft:beeswaxitem>,null],
	[null,<minecraft:iron_ingot>,null]
	]);
recipes.addShaped(<quark:candle:0>,[
	[null,<minecraft:string>,null],
	[null,<harvestcraft:beeswaxitem>,null],
	[null,<harvestcraft:beeswaxitem>,null]
	]);	

#Modifying the Crushing Tub 
mods.rustic.CrushingTub.removeRecipe(<liquid:honey>,<rustic:honeycomb>);
mods.rustic.CrushingTub.addRecipe(<liquid:honey>*250,null,<harvestcraft:honeycombitem>);

#Modifying the condenser
val regenNormal = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regenLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regenTwo = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});
mods.rustic.Condenser.removeRecipe(regenNormal); 
mods.rustic.Condenser.removeRecipe(regenLong); 
mods.rustic.Condenser.removeRecipe(regenTwo); 
mods.rustic.Condenser.addRecipe(regenNormal, <harvestcraft:honeycombitem>, <rustic:cohosh>);
mods.rustic.Condenser.addRecipe(regenLong, <rustic:horsetail>, [<harvestcraft:honeycombitem>,<rustic:cohosh>]); 
mods.rustic.Condenser.addRecipe(regenTwo,<rustic:marsh_mallow>,[<harvestcraft:honeycombitem>,<rustic:cohosh>]);

#remove Bee's from menu
recipes.remove(<rustic:apiary>);
furnace.remove(<rustic:beeswax>);
furnace.setFuel(<rustic:apiary>,0);
mods.jei.JEI.hide(<rustic:apiary>);
mods.jei.JEI.hide(<rustic:beehive>);
mods.jei.JEI.hide(<rustic:bee>);
mods.jei.JEI.hide(<rustic:honeycomb>); 
mods.jei.JEI.hide(<rustic:beeswax>);

#Fixing the "Basalt issues" 
mods.chisel.Carving.addVariation("basalt",<nex:block_basalt:0>);
mods.chisel.Carving.addVariation("basalt",<nex:block_basalt:1>);
mods.chisel.Carving.addVariation("basalt",<nex:block_basalt:2>);
mods.chisel.Carving.addVariation("basalt",<nex:block_basalt:3>);
mods.chisel.Carving.addVariation("basalt",<quark:basalt:0>);
mods.chisel.Carving.addVariation("basalt",<quark:basalt:1>);

#remove Constantan 
recipes.remove(<immersiveengineering:storage:6>);
recipes.remove(<immersiveengineering:storage_slab:6>);
recipes.remove(<immersiveengineering:sheetmetal:6>);
recipes.remove(<immersiveengineering:sheetmetal_slab:6>); 
recipes.remove(<immersiveengineering:metal:6>);
recipes.remove(<immersiveengineering:metal:15>);
recipes.remove(<immersiveengineering:metal:26>);
recipes.remove(<immersiveengineering:metal:36>);
mods.jei.JEI.hide(<immersiveengineering:metal:6>); 
mods.jei.JEI.hide(<immersiveengineering:storage:6>);
mods.jei.JEI.hide(<immersiveengineering:storage_slab:6>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal:6>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal_slab:6>); 
mods.jei.JEI.hide(<immersiveengineering:metal:6>);
mods.jei.JEI.hide(<immersiveengineering:metal:15>);
mods.jei.JEI.hide(<immersiveengineering:metal:26>);
mods.jei.JEI.hide(<immersiveengineering:metal:36>);
furnace.remove(<immersiveengineering:metal:6>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:6>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:36>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:metal:15>);

#remove Tin 
recipes.remove(<abyssalcraft:crystalcluster2>);
recipes.remove(<abyssalcraft:crystal:16>); 
recipes.remove(<abyssalcraft:crystalshard:16>);
recipes.remove(<abyssalcraft:crystalfragment:16>);
recipes.remove(<abyssalcraft:tiningot>);
recipes.remove(<thaumcraft:nugget:2>); 
recipes.remove(<thaumcraft:cluster:3>);
furnace.remove(<abyssalcraft:tiningot>); 
#mods.chisel.Carving.removeGroup("blockTin"); - Also doesn't work 
mods.jei.JEI.hide(<chisel:blocktin:*>);
mods.jei.JEI.hide(<abyssalcraft:crystalcluster2>);
mods.jei.JEI.hide(<abyssalcraft:crystal:16>); 
mods.jei.JEI.hide(<abyssalcraft:crystalshard:16>);
mods.jei.JEI.hide(<abyssalcraft:tiningot>);
mods.jei.JEI.hide(<thaumcraft:nugget:2>); 
mods.jei.JEI.hide(<thaumcraft:cluster:3>);
mods.jei.JEI.hide(<abyssalcraft:tiningot>); 
mods.jei.JEI.hide(<abyssalcraft:abytinore>);
mods.jei.JEI.hide(<abyssalcraft:crystalfragment:16>);
var tinIng = <ore:ingotTin>; 
tinIng.add(<embers:ingot_silver>); 

#remove Uranium
#mods.chisel.Carving.removeGroup("blockUranium"); - This doesn't work for whatever reason
mods.jei.JEI.hide(<chisel:blockuranium:*>);
mods.jei.JEI.hide(<immersiveengineering:storage:5>);
mods.jei.JEI.hide(<immersiveengineering:storage_slab:5>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal:5>);
mods.jei.JEI.hide(<immersiveengineering:metal:5>);
mods.jei.JEI.hide(<immersiveengineering:metal:14>);
mods.jei.JEI.hide(<immersiveengineering:metal:25>);
mods.jei.JEI.hide(<immersiveengineering:metal:35>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal_slab:5>);
mods.jei.JEI.hide(<immersiveengineering:ore:5>); 
recipes.remove(<immersiveengineering:storage:5>);
recipes.remove(<immersiveengineering:storage_slab:5>);
recipes.remove(<immersiveengineering:sheetmetal:5>);
recipes.remove(<immersiveengineering:metal:5>);
recipes.remove(<immersiveengineering:metal:14>);
recipes.remove(<immersiveengineering:metal:25>);
recipes.remove(<immersiveengineering:metal:35>);
recipes.remove(<immersiveengineering:sheetmetal_slab:5>); 
furnace.remove(<immersiveengineering:metal:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:metal:14>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:35>);
mods.astralsorcery.Grindstone.removeRecipe(<immersiveengineering:metal:14>);
#mods.bloodmagic.AlchemyTable.removeRecipe(<immersiveengineering:metal:14>); - Not sure how to call this correctly 

#"Remove" Mithril (Why is it in here?)
mods.jei.JEI.hide(<embers:block_mithril>);
mods.jei.JEI.hide(<embers:plate_mithril>);
mods.jei.JEI.hide(<embers:nugget_mithril>);
mods.jei.JEI.hide(<embers:ingot_mithril>);

#Fix Thermoelectric Generator  
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>,[
	[<immersiveengineering:metal:8>,<immersiveengineering:metal:8>,<immersiveengineering:metal:8>],
	[<ore:plateElectrum>,<immersiveengineering:metal_decoration0:0>,<ore:plateElectrum>],
	[<ore:plateElectrum>,<ore:plateElectrum>,<ore:plateElectrum>]
	]);
	
#Fix Armor Piercing Cartridge... sorta 
var conNug = <ore:nuggetConstantan>;
conNug.add(<embers:nugget_electrum>);

#Apple Related Issues
mods.rustic.CrushingTub.removeRecipe(<liquid:applejuice>,<minecraft:apple>);
mods.rustic.CrushingTub.addRecipe(<liquid:applejuice>*250,null,<minecraft:apple>);
mods.jei.JEI.hide(<rustic:apple_seeds>); 

#Grape Issues
var grape = <ore:cropGrape>; 
var seed = <ore:listAllseed>; 
grape.remove(<harvestcraft:grapeitem>);
seed.add(<rustic:grape_stem>); 
seed.remove(<harvestcraft:grapeseeditem>); 
recipes.remove(<harvestcraft:grapeseeditem>); 
mods.jei.JEI.hide(<harvestcraft:grapeseeditem>); 
mods.jei.JEI.hide(<harvestcraft:grapeitem>);

#tomato Issues
var tomato = <ore:cropTomato>; 
seed.remove(<harvestcraft:tomatoseeditem>); 
seed.add(<rustic:tomato_seeds>); 
tomato.remove(<harvestcraft:tomatoitem>); 
recipes.remove(<harvestcraft:tomatoseeditem>);
mods.jei.JEI.hide(<harvestcraft:tomatoseeditem>); 
mods.jei.JEI.hide(<harvestcraft:tomatoitem>);

#Pepper Issues
var chili = <ore:cropChiliPepper>; 
seed.remove(<harvestcraft:chilipepperseeditem>); 
seed.add(<rustic:chili_pepper_seeds>); 
chili.remove(<harvestcraft:chilipepperitem>); 
recipes.remove(<harvestcraft:chilipepperseeditem>);
mods.jei.JEI.hide(<harvestcraft:chilipepperitem>); 
mods.jei.JEI.hide(<harvestcraft:chilipepperseeditem>);
