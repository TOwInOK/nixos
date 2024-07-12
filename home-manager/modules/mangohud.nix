{
programs.mangohud = {
  enable = true;
  enableSessionWide = true;
  settings = 
  {
      full = false;
      vsync = -1;
      gl_vsync = -2;
      af = 4;
      toggle_hud = "Shift_R+F12";
      position = "bottom-left";
      preset = 4;
      #full

      #Hud config
        #GPU
          gpu_stats = true;
        #CPU
          cpu_stats = true;
       # cpu_temp
       # cpu_power
       # cpu_text=
       # cpu_mhz
       # cpu_load_change
       # cpu_load_value=60,90
       # cpu_load_color=39f900,fdfd09,b22222
       
       #---
        vram = true;
        ram = true;
      #swap #I don't use it!
      #---
       fps = true;
       frametime = true;
      #---system info
       engine_version = true;
       engine_short_names = true;
       vulkan_driver = true;
       wine = true;
       winesync = true;
      #fsr
      fsr = true;
      
      #graphs
      #graphs=

      #GUI
      alpha = 0.8;
      #background_alpha=0.5
      table_columns = 4;
      cellpadding_y = -0.085;
    };
  };
}
