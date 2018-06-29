#remove Tin RecipeStamper
recipes.remove(<abyssalcraft:crystalcluster2>);
recipes.remove(<abyssalcraft:crystal:16>);
recipes.remove(<abyssalcraft:crystalshard:16>);
recipes.remove(<abyssalcraft:crystalfragment:16>);
recipes.remove(<abyssalcraft:tiningot>);
recipes.remove(<thaumcraft:nugget:2>);
recipes.remove(<thaumcraft:cluster:3>);
furnace.remove(<abyssalcraft:tiningot>);

recipes.removeByRecipeName("abyssalcraft:coin_2");

#mods.chisel.Carving.removeGroup("blockTin"); - Also doesn't work

#Remove Crysalization
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:0>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:1>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:2>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:3>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:4>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:5>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<chisel:blocktin:6>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<thaumcraft:nugget:8>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<thaumcraft:nugget:2>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<abyssalcraft:tiningot>);
mods.abyssalcraft.Crystallizer.removeCrystallization(<abyssalcraft:abytinore>);

#Remove Transmutation
mods.abyssalcraft.Transmutator.removeTransmutation(<abyssalcraft:crystal:16>);
mods.abyssalcraft.Transmutator.removeTransmutation(<abyssalcraft:crystalshard:16>);

#Remove Materialization
mods.abyssalcraft.Materializer.removeMaterialization(<abyssalcraft:tiningot>);

#Remove ArcFurnace
mods.immersiveengineering.ArcFurnace.removeRecipe(<abyssalcraft:tiningot>);

#Add back the brass crystalization


#Hide In JEI
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

#Add descriptions
mods.jei.JEI.addDescription(<chisel:blocktin:*>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:crystalcluster2>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:crystal:16>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:crystalshard:16>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:tiningot>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<thaumcraft:nugget:2>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<thaumcraft:cluster:3>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:tiningot>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:abytinore>,["This item has been removed in this modpack, you are safe to throw this away"]);
mods.jei.JEI.addDescription(<abyssalcraft:crystalfragment:16>,["This item has been removed in this modpack, you are safe to throw this away"]);
