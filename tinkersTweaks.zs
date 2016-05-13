var itemSilkyCloth = <TConstruct:materials:25>;
var itemSilkyJewel = <TConstruct:materials:26>;
var itemBookSilkTouch = <minecraft:enchanted_book>.withTag({RepairCost: 2, ench: [{id: 33 as short}]});
var itemEmerald = <minecraft:emerald>;

#Make silky jewel more expencive
recipes.remove(itemSilkyJewel);
recipes.addShaped(itemSilkyJewel, [
	[itemBookSilkTouch, itemSilkyCloth, itemBookSilkTouch],
	[itemSilkyCloth, itemEmerald, itemSilkyCloth], 
	[itemBookSilkTouch, itemSilkyCloth, itemBookSilkTouch]
]);