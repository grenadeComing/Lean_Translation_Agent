import Mathlib

/-!
Let a b ∈ ℂ. Show that |a + b|^2 = |a|^2 + |b|^2 + 2 Re (a * conj b).
-/

theorem abs_add_sq_complex (a b : ℂ) :
  Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * Complex.re (a * Star.star b) := by
  sorry
