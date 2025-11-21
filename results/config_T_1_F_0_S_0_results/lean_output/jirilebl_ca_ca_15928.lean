import Mathlib

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective.
    Then f'(z) ≠ 0 for every z ∈ U. -/
theorem deriv_ne_zero_of_analytic_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U) (hinj : InjOn f U) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry