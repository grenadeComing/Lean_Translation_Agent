import Mathlib

open Set

/-- If U ⊂ ℂ is open and f : ℂ → ℂ is holomorphic (differentiable on U) and injective on U,
then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_deriv_ne_zero (U : Set ℂ) (f : ℂ → ℂ)
  (hU : IsOpen U) (hd : DifferentiableOn ℂ f U)
  (h_inj : ∀ x y, x ∈ U → y ∈ U → f x = f y → x = y) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
