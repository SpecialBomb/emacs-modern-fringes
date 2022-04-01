# modern-fringes

modern-fringes is meant to replace the default fringes with ones that are more visually pleasing.  They are very simple to use, just enable the modern-fringes-mode minor mode.  You are able to use customize to make the mode permanent, as well as change other aspects.  It is a global minor mode and will affect all buffers.

It is suggested to use the following function in your init file to use modern-fringes at intended.  It matches the truncation arrow foreground color to the current main background color of your theme, making them appear transparent and less visually cluttering.

```(modern-fringes-invert-arrows)```

Depending on your theme, the function may make them look unappealing.  In that case, you can edit the bitmap faces as you wish in your config.

modern-fringes assumes the fringe width is 8 pixels wide, and the bitmaps will likely look strange if the width is any different.

# Screenshots

Truncation:

This uses `(modern-fringes-invert-arrows)` for the transparent effect.

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/truncation.png "truncation")

Wrapping:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/wrap.png "wrapping")

Debug Arrows:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/debug.png "debug")
