import Mathlib

/-- If U ⊆ ℂ is open and f : ℂ → ℂ is holomorphic on U and injective on U,
    then the complex derivative of f does not vanish at any point of U. -/
theorem injective_holomorphic_on_deriv_ne_zero (U : Set ℂ) (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (hinj : ∀ x y, x ∈ U → y ∈ U → f x = f y → x = y) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
