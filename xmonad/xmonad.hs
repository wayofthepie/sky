{-
  Place this in ~/.xmonad/, this needs to be automated...
 -}

import XMonad

main = xmonad defaultConfig
  { terminal    = "xterm"
  , modMask     = mod4Mask
  , borderWidth = 3
  }
