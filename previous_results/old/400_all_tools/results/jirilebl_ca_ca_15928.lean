import Mathlib

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective. Show that f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : AnalyticOn ℂ f U) (h_inj : Set.InjOn f U) (z : ℂ) (hz : z ∈ U) : deriv f z ≠ 0 := by sorry
