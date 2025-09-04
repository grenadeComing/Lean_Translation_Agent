import Mathlib

theorem conformal_at_iff_hasDerivAt_ne_zero {f : ℂ → ℂ} {z0 : ℂ} {f' : ℂ} (h : HasDerivAt f f' z0) :
  ConformalAt (fun z : ℂ => f z) z0 ↔ f' ≠ 0 := by sorry
