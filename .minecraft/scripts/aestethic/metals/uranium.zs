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
mods.bloodmagic.AlchemyTable.removeRecipe([<immersiveengineering:ore:5>,<bloodmagic:cutting_fluid>]);