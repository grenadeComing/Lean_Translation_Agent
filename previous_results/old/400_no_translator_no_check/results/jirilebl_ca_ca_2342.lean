import Mathlib

open Complex

/--
If a function f : ℂ → ℂ is conformal at z0 (as a map of real normed spaces),
then and only then it has a nonzero complex derivative at z0.
We state this as an equivalence between ConformalAt f z0 and the
existence of a complex derivative f' ≠ 0 (expressed with HasDerivAt).
-/
theorem conformal_at_iff_hasDerivAt_ne_zero (f : ℂ → ℂ) (z0 : ℂ) :
  ConformalAt f z0 ↔ (∃ f' : ℂ, HasDerivAt f f' z0 ∧ f' ≠ 0) := by sorry
