import Mathlib

/-!
Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant and f'(z0)=0.
Show that z0 is a zero of f' of some finite order.
-/

theorem deriv_zero_has_finite_order (U : Set ℂ) (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : AnalyticOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hnotconst : ¬ ∀ z ∈ U, f z = f z0) (hder0 : deriv f z0 = 0) :
  ∃ (n : ℕ), 0 < n ∧ ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧
    ∃ g : ℂ → ℂ, AnalyticOn ℂ g V ∧ g z0 ≠ 0 ∧ ∀ z ∈ V, deriv f z = (z - z0) ^ n * g z :=
by sorry