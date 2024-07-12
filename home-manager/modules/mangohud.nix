{
programs.mangohud = {
  enable = true;
  settings = '' 
    {
      vsync=-1
      gl_vsync=-2
      af=4
      toggle_hud=Shift_R+F12

      preset=4
      #full

      #Hud config
        #GPU
          gpu_stats
        #CPU
          cpu_stats
       # cpu_temp
       # cpu_power
       # cpu_text=
       # cpu_mhz
       # cpu_load_change
       # cpu_load_value=60,90
       # cpu_load_color=39f900,fdfd09,b22222
       
       #---
        vram
        ram
      #swap #I don't use it!
      #---
       fps
       frametime
      #---system info
       engine_version
       engine_short_names
       vulkan_driver
       wine
       winesync
      #fsr
      fsr
      
      #graphs
      #graphs=

      #GUI
      alpha=0.8
      #background_alpha=0.5
      table_columns=4
      cellpadding_y=-0.085
    } 
    '';
  };
}
