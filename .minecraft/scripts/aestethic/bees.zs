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
