project "ImGui"
	kind "StaticLib"
	staticruntime "on"
	language "C++"
	cppdialect "C++17"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
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

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
