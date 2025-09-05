import Mathlib

/-!
Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0
if and only if f'(z0) ≠ 0.
-/

lemma conformal_at_iff_deriv_ne_zero (f : ℂ → ℂ) (z0 : ℂ) (hf : IsHolomorphicAt f z0) :
  IsConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry
