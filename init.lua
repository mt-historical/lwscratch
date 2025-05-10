local version = "0.2.3"



lwscratch = { }



function lwscratch.version ()
	return version
end



local utils = { }
utils.commands_inv_size = 120
utils.program_inv_size = 500

local modpath = minetest.get_modpath ("lwscratch")


assert (loadfile (modpath.."/settings.lua")) (utils)
assert (loadfile (modpath.."/utils.lua")) (utils)
assert (loadfile (modpath.."/encoder.lua")) (utils)
assert (loadfile (modpath.."/commands.lua")) (utils)
assert (loadfile (modpath.."/program.lua")) (utils)
assert (loadfile (modpath.."/robot_ops.lua")) (utils)
assert (loadfile (modpath.."/robot.lua")) (utils)
assert (loadfile (modpath.."/cassette.lua")) (utils)
assert (loadfile (modpath.."/crafting.lua")) ()



--
