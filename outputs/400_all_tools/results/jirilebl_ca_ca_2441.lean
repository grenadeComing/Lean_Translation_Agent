import Mathlib

/-- Let U be an open subset of ℂ and f : U → ℂ be a holomorphic function with f'(z) ≠ 0 for all z ∈ U.
Prove that f is locally injective on U, i.e., for each z₀ ∈ U there exists a neighborhood V of z₀ such that f|_V is injective. -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hf' : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ ∀ x y, x ∈ V → y ∈ V → f x = f y → x = y := by sorry
