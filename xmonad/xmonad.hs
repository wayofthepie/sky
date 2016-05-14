import XMonad

import XMonad.Hooks.SetWMName

main = xmonad defaultConfig
  { terminal    = "xfce4-terminal"
  , modMask     = mod4Mask
  , borderWidth = 1

  -- Xmonad + swing integration
  , startupHook = setWMName "LG3D"

  -- Focused border
  , focusedBorderColor = "#ff0000"
  }
