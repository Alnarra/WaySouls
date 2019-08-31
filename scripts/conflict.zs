#Iron Plate and Iron Rod
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<abyssalcraft:ironp>);

recipes.addShaped(<abyssalcraft:ironp>,[
  [null, null, null],
  [null, <minecraft:iron_ingot>,null],
  [null, <minecraft:iron_ingot>,null]
  ]);
recipes.addShaped(<immersiveengineering:material:1>,[
  [null, <minecraft:iron_ingot>, null],
  [null, <minecraft:iron_ingot>, null],
  [null , null, null]
  ]);

#Wooden Stake and vertical slabs
recipies.remove(<rustic:crop_stake>);

recipes.addShaped(<rustic.crop_stake>,[
  [null, null, <ore:plankWood>],
  [null, <ore:plankWood>, null],
  [<ore:plankWood>, null, null]
  ])
