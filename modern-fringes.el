;;; modern-fringes.el --- Replaces default fringe bitmaps with better looking ones

;; Copyright (C) 2020 Quen Jankosky

;; Author: Quen Jankosky <quen.jankosky@gmail.com>
;; Keywords: themes, fringes
;; URL: http://github.com/specialbomb/emacs-modern-fringes
;; Version: 2

;;; Commentary:

;; modern-fringes is meant to replace the arguably ugly default fringe bitmaps
;; with more modern, easier on the eyes ones.  They are very simple to use,
;; simply put:
;;
;;   (modern-fringes-init)
;;
;; ... in your Emacs init.  To use this as designed, an optional function
;; can be applied that sets the truncation arrows to the background
;; color of the default face, making a "transparent" effect (see
;; screen-shots on the github). To apply this, put:
;;
;;   (modern-fringes-invert-arrows)
;; 
;; ... in your init as well, before the modern-fringes-init function.
;; Depending on your theme, it may not work properly.  In that case,
;; you can edit the face manually with M-x customize.
;;
;; modern-fringes was designed assuming the fringe width is 8 pixels
;; wide.  It will likely look strange if the width is any less or more.

;; bitmap references

;; mf-right-arrow
;;10000000
;;11000000
;;11100000
;;11110000
;;11111000
;;11111100
;;11111110
;;11111100
;;11111000
;;11110000
;;11100000
;;11000000
;;10000000

;; mf-left-arrow
;;00000001
;;00000011
;;00000111
;;00001111
;;00011111
;;00111111
;;01111111
;;00111111
;;00011111
;;00001111
;;00000111
;;00000011
;;00000001

;; mf-right-curly-arrow
;;1000000
;;0100000
;;0010000
;;0001000
;;1000100
;;1001000
;;1010000
;;1100000
;;1111100

;; mf-left-curly-arrow
;;000010
;;000100
;;001000
;;010000
;;100010
;;010010
;;001010
;;000110
;;111110

;; mf-right-debug-arrow
;;10000000
;;01000000
;;11100000
;;00010000
;;11111000
;;00000100
;;11111110
;;00000100
;;11111000
;;00010000
;;11100000
;;01000000
;;10000000

;; mf-left-debug-arrow
;;0000001
;;0000010
;;0000111
;;0001000
;;0011111
;;0100000
;;1111111
;;0100000
;;0011111
;;0001000
;;0000111
;;0000010
;;0000001

;;; Code:

(defgroup modern-fringes-faces nil
  "Group for faces associated with modern-fringes."
  :group 'faces)

(defface modern-fringes-arrows
  `((default))
	"\"Transparent\" style face theme for modern-fringes left and right arrows."
	:group 'modern-fringes-faces)

;;;###autoload

(defun modern-fringes-init ()
  "Apply all of the modern fringe bitmaps.  Make your fringes look cool!"
  (interactive)
  (let ((mf-right-arrow [128 192 224 240 248 252 254 252 248 240 224 192 128])
		(mf-left-arrow [1 3 7 15 31 63 127 63 31 15 7 3 1])
		(mf-right-curly-arrow [64 32 16 8 68 72 80 96 124])
		(mf-left-curly-arrow [2 4 8 16 34 18 10 6 62])
		(mf-right-debug-arrow [128 64 224 16 248 4 254 4 248 16 224 64 128])
		(mf-left-debug-arrow [1 2 7 8 31 32 127 32 31 8 7 2 1]))
	(define-fringe-bitmap 'right-arrow mf-right-arrow nil nil 'center)
	(define-fringe-bitmap 'left-arrow mf-left-arrow nil nil 'center)
	(define-fringe-bitmap 'right-curly-arrow mf-right-curly-arrow nil nil 'center)
	(define-fringe-bitmap 'left-curly-arrow mf-left-curly-arrow nil nil 'center)
	(define-fringe-bitmap 'right-triangle mf-right-debug-arrow nil nil 'center)
	(define-fringe-bitmap 'left-triange mf-left-debug-arrow nil nil 'center)
	(set-fringe-bitmap-face 'right-arrow 'modern-fringes-arrows)
	(set-fringe-bitmap-face 'left-arrow 'modern-fringes-arrows))
  (message "Applied modern-fringes."))

;;;###autoload

(defun modern-fringes-invert-arrows ()
  "Apply ideal colors for the fringe truncation arrows in a flexible manner.  Should be used before (modern-fringes-init) is called in the user's init file."
  (interactive)
  (set-face-attribute 'modern-fringes-arrows nil
					  :foreground (face-attribute 'default :background)
					  :background (face-attribute 'fringe :background))
  (message "Applied modern-fringes default theme."))

;;; modern-fringes.el ends here
