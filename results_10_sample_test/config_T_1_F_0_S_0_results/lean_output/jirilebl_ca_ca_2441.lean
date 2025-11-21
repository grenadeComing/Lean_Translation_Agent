import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U.
    Then f is locally injective on U: for each z ∈ U there is an open neighborhood V of z
    contained in U such that f is injective on V. -/
theorem holomorphic_on_deriv_ne_zero_locally_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry