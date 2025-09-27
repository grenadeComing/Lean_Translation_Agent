import Mathlib

/-!
Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 iff f'(z0) ≠ 0.
We state a local version: if f has a complex derivative f' at z0 (HasDerivAt),
then f is conformal at z0 iff f' ≠ 0.
-/

theorem holomorphic_conformal_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ} {f' : ℂ}
  (h : HasDerivAt f f' z0) :
  ConformalAt f z0 ↔ f' ≠ 0 := by sorry
