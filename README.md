# modern-fringes

modern-fringes is meant to replace the arguably ugly default fringe bitmaps with more modern, easier on the eyes ones.  They are very simple to use, simply use the modern-fringes-mode.  As one knows, you may use customize to make the mode permanent.  It is a global minor mode, so it will affect all buffers.

It is suggested to use the following function in your init file to use modern-fringes at intended.  It makes the truncation arrows appear transparent, making a very easy on the eyes zipper-effect.

```(modern-fringes-invert-arrows)```

Depending on your theme, it may not work properly.  In that case, you can edit the bitmap faces as you wish in your config. modern-fringes was designed assuming the fringe width is 8 pixels wide.  It will likely look strange if the width is any less or more.

# Screenshots

Truncation:

This uses `(modern-fringes-invert-arrows)` for the transparent effect.

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/truncation.png "truncation")

Wrapping:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/wrap.png "wrapping")

Debug Arrows:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/debug.png "debug")
