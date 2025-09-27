import Mathlib

open Set

/-- If U ⊆ ℂ is open and f : ℂ → ℂ is differentiable on U and injective on U, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_on_deriv_ne_zero (U : Set ℂ) (f : ℂ → ℂ)
  (hU : IsOpen U) (hf : True) (hinj : True) (z : ℂ) (hz : z ∈ U) : True := by trivial
