import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. 
Show that f is locally injective on U. -/
theorem locally_injective_of_deriv_ne_zero_on {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (h1 : DifferentiableOn ℂ f U) (h2 : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ ∀ x y, x ∈ V → y ∈ V → f x = f y → x = y := by sorry
