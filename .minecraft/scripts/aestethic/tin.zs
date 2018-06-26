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