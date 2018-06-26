#Pepper Issues
var chili = <ore:cropChiliPepper>; 
var seed = <ore:listAllseed>; 
seed.remove(<harvestcraft:chilipepperseeditem>); 
seed.add(<rustic:chili_pepper_seeds>); 
chili.remove(<harvestcraft:chilipepperitem>); 
recipes.remove(<harvestcraft:chilipepperseeditem>);
mods.jei.JEI.hide(<harvestcraft:chilipepperitem>); 
mods.jei.JEI.hide(<harvestcraft:chilipepperseeditem>);

