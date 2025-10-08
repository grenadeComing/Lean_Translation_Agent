import Mathlib

/-!
Simple lemma: for complex numbers a, b we have
|a + b|^2 = |a|^2 + |b|^2 + 2 * Re (a * conj b).
-/

theorem complex_abs_add_sq (a b : ℂ) :
  (Complex.abs (a + b)) ^ 2 = (Complex.abs a) ^ 2 + (Complex.abs b) ^ 2 + 2 * (Complex.re (a * Complex.conj b)) := by sorry
