project "log_c"
   kind "StaticLib"
   language "C"
   staticruntime "On"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

   files 
   { 
      "src/log.h",
      "src/log.c" 
   }

   filter "system:windows"
      systemversion "latest"
      

   filter "configurations:Debug"
      symbols "On"

   filter "configurations:Release"
      optimize "On"

   filter "configurations:Dist"
      optimize "On"