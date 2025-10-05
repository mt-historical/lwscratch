local mats = xcompat.materials

-- Easier to remember recipes (ComputerCraft-inspired) 
minetest.register_craft({
	output = "lwscratch:cassette 1", 
	recipe = { mats.book, mats.copper_ingot, mats.mese_crystal },
	type   = "shapeless"
})
minetest.register_craft({
	output = "lwscratch:robot 1", 
	recipe = {
		{ mats.copper_ingot, mats.copper_ingot, mats.copper_ingot },
		{ mats.copper_ingot, mats.mese_crystal, mats.copper_ingot },
		{ mats.copper_ingot, mats.chest,        mats.copper_ingot }
	}
})

-- Legacy recipes
minetest.register_craft({
	output = "lwscratch:cassette 1", 
	recipe = { mats.clay_lump, mats.coal_lump, mats.stick, mats.book },
	type   = "shapeless"
})
minetest.register_craft({
	output = "lwscratch:robot 1", 
	recipe = {
		{ mats.stone,       mats.tin_ingot,    mats.glass },
		{ mats.steel_ingot, mats.coal_lump,    mats.steel_ingot },
		{ mats.stick,       mats.copper_ingot, mats.clay_lump }
	}
})
minetest.register_craft({
	output = "lwscratch:robot 1", 
	recipe = {
		{ mats.stone,       mats.steel_ingot, mats.glass },
		{ mats.steel_ingot, mats.coal_lump,   mats.steel_ingot },
		{ mats.stick,       mats.steel_ingot, mats.clay_lump }
	}
})
