import Mathlib

axiom complex_abs_cos_le_cosh_im :
  ∀ z : Complex, Complex.abs (Complex.cos z) ≤ Real.cosh (Complex.im z)
