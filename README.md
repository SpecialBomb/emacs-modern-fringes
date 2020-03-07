# modern-fringes

modern-fringes is meant to replace the arguably ugly default fringe bitmaps with more modern, easier on the eyes ones. They are very simple to use, simply put:

```(modern-fringes-init)```

... in your emacs init. To use this as designed, an optional function can be applied that sets the truncation arrows to the background color of the default face, making a "transparent" effect (seescreen-shots). To apply this, put:

```(modern-fringes-invert-arrows)```

... in your init as well, before the modern-fringes-init function. Depending on your theme, it may not look right.

modern-fringes was designed assuming the fringe width is 8 pixels wide. It will likely look strange if the width is any less or more.

# Screenshots

Truncation:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/truncation.png "truncation")

Wrapping:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/wrap.png "wrapping")

Debug Arrows:

![alt text](https://github.com/SpecialBomb/emacs-modern-fringes/raw/master/screenshots/debug.png "debug")
