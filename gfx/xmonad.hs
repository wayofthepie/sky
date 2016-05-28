import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Util.EZConfig
import XMonad.Util.Paste

import qualified Data.Map as M

main = xmonad $ defaultConfig
  { borderWidth = 1
  -- Focused border
  , focusedBorderColor = "#ff0000"

  -- Mod key binding
  , modMask     = mod4Mask

  -- Xmonad + swing integration
  , startupHook = customStartupHook

  -- Terminal configuration
  , terminal    = "xterm -bg black -fg white -fa Monospace -fs 12"

  }
  `additionalKeys` copyPasteKeyBinding

customStartupHook :: X ()
customStartupHook = do
  spawn "compton -f -I 0.10 -O 0.10 --backend xrender --vsync opengl"
  spawn "notify-send 'Xmonad Started/Recompiled' --icon=emblem-system"
  setWMName "LG3D" >> pure ()

copyPasteKeyBinding = [ ((mod1Mask, xK_Insert), pasteSelection) ]
