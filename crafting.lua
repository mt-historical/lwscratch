
if core.get_modpath ("default") then
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe = {
			{ "default:stone",       "default:tin_ingot",    "default:glass" },
			{ "default:steel_ingot", "default:coal_lump",    "default:steel_ingot" },
			{ "default:stick",       "default:copper_ingot", "default:clay_lump" }
		}
	})
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe={
			{ "default:stone",       "default:steel_ingot", "default:glass" },
			{ "default:steel_ingot", "default:coal_lump",   "default:steel_ingot" },
			{ "default:stick",       "default:steel_ingot", "default:clay_lump" }
		}
	})

	minetest.register_craft({
		output = "lwscratch:cassette 1", 
		recipe={
			{ "default:clay_lump", "default:coal_lump" },
			{ "default:stick", "default:book" }
		}
	})

elseif core.get_modpath("mcl_core") then
	minetest.register_craft({
		output = "lwscratch:robot 1", 
		recipe={
			{ "mcl_core:stone",      "mcl_core:iron_ingot", "mcl_core:glass" },
			{ "mcl_core:iron_ingot", "mcl_core:coal_lump",  "mcl_core:iron_ingot" },
			{ "mcl_core:stick",      "mcl_core:iron_ingot", "mcl_core:clay_lump" }
		}
	})
	minetest.register_craft({
		output = "lwscratch:cassette 1", 
		recipe={
			{ "mcl_core:clay_lump", "mcl_core:coal_lump" },
			{ "mcl_core:stick",     "mcl_books:book" }
		}
	})
else
	core.log("error", "LwScratch: Couldn't add recipes. Items can be fetched with creative mode or \"/give\" with the values \"lwscratch:robot\" and \"lwscratch:cassette\".")
end

