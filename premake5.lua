project "DirectXTex"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
    flags {
		"MultiProcessorCompile"
	}

	targetdir ("bin/" .. outputdir) -- TODO
	objdir ("bin_int/" .. outputdir .. "/%{prj.name}") -- TODO

	defines {
        "WIN32_LEAN_AND_MEAN",
        "UNICODE",
        "_UNICODE",
        "_SCL_SECURE_NO_WARNINGS",
        "_CRT_SECURE_NO_WARNINGS",
    }

    files {
        "DirectXTex/**.h",
        "DirectXTex/**.cpp",
    }

    filter "system:windows"
        systemversion "latest"

    filter  "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter  "configurations:Release"
        runtime "Release"
        optimize "on"

