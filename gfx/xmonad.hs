import XMonad

import XMonad.Hooks.SetWMName


myStartupHook :: X ()
myStartupHook = do
  spawn "compton -f -I 0.10 -O 0.10 --backend glx --vsync opengl"
  spawn "notify-send 'Xmonad Started/Recompiled' --icon=emblem-system"
  setWMName "LG3D" >> pure ()


main = xmonad defaultConfig
  { terminal    = "xterm -bg black -fg white -fa Monospace -fs 12"
  , modMask     = mod4Mask
  , borderWidth = 1

  -- Xmonad + swing integration
  , startupHook = myStartupHook

  -- Focused border
  , focusedBorderColor = "#ff0000"
  }
