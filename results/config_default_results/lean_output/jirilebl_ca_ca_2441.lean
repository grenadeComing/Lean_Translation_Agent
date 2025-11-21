import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic (differentiable on U), and f'(z) ≠ 0 for every z ∈ U. 
    Then f is locally injective on U: for each z ∈ U there is a ball around z on which f is injective. -/
theorem holomorphic_deriv_ne_zero_locally_injective {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hderiv : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ r : ℝ, r > 0 ∧ Metric.ball z r ⊆ U ∧ (∀ x y, x ∈ Metric.ball z r → y ∈ Metric.ball z r → f x = f y → x = y) := by sorry
