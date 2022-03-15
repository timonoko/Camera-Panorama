
(progn
 (defq MODULE POLAR)
 (defq POLAR (simple_copy testi tee-tama global_points POLAR))
 (defq
  global_points
  (lambda
   (x)
   (global AOX 470)
   (global AOY 475)
   (global BOX 1460)
   (global BOY 450)
   (global AR 405)
   (global BR 405)))
 (defq tee-tama (lambda (x) (save) (global_points) (comppy 'simple_copy)))
 (defq
  testi
  (lambda
   ()
   (save)
   (tee-tama)
   (killdisplay)
   (global EKA (loadimage '00000157.jpg))
   (global IM (newimage 1802 902 '(0 0 0)))
   (simple_copy 'A)
   (simple_copy 'B)
   (showimage IM)
   (saveimage IM 'IM.JPG)))
 (defq
  simple_copy
  (lambda
   (AB)
   (cond
    ((equal AB 'A)
     (setq XO 0)
     (setq OX AOX)
     (setq OY AOY))
    (t (setq XO 900) (setq OX BOX) (setq OY BOY)))
   (setq paska 0.35)
   (setq kaks 700)
   (for
    (x -449 449)
    (for
     (y -449 449)
     (setq
      uusi
      (+ paska (/ (sqrt (+ (* x x) (* y y))) kaks)))
     (setq AR2 (/ AR uusi))
     (putpixel
      IM
      (int (+ x 451 XO))
      (int (+ y 451))
      (getpixel
       EKA
       (int (+ OX (* AR2 (/ x 450))))
       (int (+ OY (* AR2 (/ y 450))))))))
   IM)))
