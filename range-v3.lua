-- scaffold geniefile for range-v3

range-v3_script = path.getabsolute(path.getdirectory(_SCRIPT))
range-v3_root = path.join(range-v3_script, "range-v3")

range-v3_includedirs = {
	path.join(range-v3_script, "config"),
	range-v3_root,
}

range-v3_libdirs = {}
range-v3_links = {}
range-v3_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { range-v3_includedirs }
	end,

	_add_defines = function()
		defines { range-v3_defines }
	end,

	_add_libdirs = function()
		libdirs { range-v3_libdirs }
	end,

	_add_external_links = function()
		links { range-v3_links }
	end,

	_add_self_links = function()
		links { "range-v3" }
	end,

	_create_projects = function()

project "range-v3"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		range-v3_includedirs,
	}

	defines {}

	files {
		path.join(range-v3_script, "config", "**.h"),
		path.join(range-v3_root, "**.h"),
		path.join(range-v3_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
