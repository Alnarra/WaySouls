#Even with it turned off it will still show up in JEI

#Nickel Ore use Removal
mods.bloodmagic.AlchemyTable.removeRecipe([<immersiveengineering:ore:4>,<bloodmagic:cutting_fluid>]);
furnace.remove(<immersiveengineering:metal:4>);
recipes.remove(<immersiveengineering:metal:13>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:metal:13>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
mods.astralsorcery.Grindstone.removeRecipe(<immersiveengineering:metal:13>);

#block of Nickel Removal
recipes.remove(<immersiveengineering:storage:4>);

#nickel slab removal
recipes.remove(<immersiveengineering:storage_slab:4>);

#Nickel sheetmetal removal
recipes.remove(<immersiveengineering:sheetmetal:4>);

#nickel sheetmetal slab Removal
recipes.remove(<immersiveengineering:sheetmetal_slab:4>);

#nicklel ingot removal
recipes.remove(<immersiveengineering:metal:4>);

#nickel nugget removal
recipes.remove(<immersiveengineering:metal:24>);

#nickel plate remove
recipes.remove(<immersiveengineering:metal:34>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:metal:34>);

#hide in JEI
mods.jei.JEI.hide(<immersiveengineering:ore:4>);
mods.jei.JEI.hide(<immersiveengineering:storage:4>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal:4>);
mods.jei.JEI.hide(<immersiveengineering:sheetmetal_slab:4>);
mods.jei.JEI.hide(<immersiveengineering:storage_slab:4>);
mods.jei.JEI.hide(<immersiveengineering:metal:4>);
mods.jei.JEI.hide(<immersiveengineering:metal:24>);
mods.jei.JEI.hide(<immersiveengineering:metal:34>);
mods.jei.JEI.hide(<immersiveengineering:metal:13>);
