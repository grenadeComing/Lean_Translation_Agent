import Mathlib

/-!
Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 iff f'(z0) ≠ 0.
We formalize holomorphic by `DifferentiableAt ℂ f z0` and conformal at z0 by
`∃ f' : ℂ →L[ℂ] ℂ, HasFDerivAt f f' z0 ∧ IsConformalMap f'`.
-/

theorem holomorphic_conformal_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ}
  (h : DifferentiableAt ℂ f z0) :
  (∃ f' : ℂ →L[ℂ] ℂ, HasFDerivAt f f' z0 ∧ IsConformalMap (f' : ℂ →L[ℂ] ℂ)) ↔ deriv f z0 ≠ 0 := by
  sorry
