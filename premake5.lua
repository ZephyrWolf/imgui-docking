project "ImGui"
	kind "StaticLib"
	language "C++"
	--staticruntime "off"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    --pchheader "lmpch.h"
	--pchsource "lmpch.cpp"

	files
	{
        --"*.h",
        --"*.cpp"
        --"imgui_demo.cpp",
        "*.h",
        "*.cpp",
        "premake5.lua",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp"
	}

    includedirs 
	{
        "",
		"../GLFW/include"
	}

	links
	{
		"GLFW"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

        defines
		{
			"LEMON_PLATFORM_WINDOWS"
		}

    filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
