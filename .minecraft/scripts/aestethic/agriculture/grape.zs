#Grape Issues
var grape = <ore:cropGrape>; 
var seed = <ore:listAllseed>; 
grape.remove(<harvestcraft:grapeitem>);
seed.add(<rustic:grape_stem>); 
seed.remove(<harvestcraft:grapeseeditem>); 
recipes.remove(<harvestcraft:grapeseeditem>); 
mods.jei.JEI.hide(<harvestcraft:grapeseeditem>); 
mods.jei.JEI.hide(<harvestcraft:grapeitem>);