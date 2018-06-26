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