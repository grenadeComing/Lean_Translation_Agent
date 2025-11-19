import Mathlib

/-- If f is holomorphic on an open domain U ⊆ ℂ, then f is analytic on U. -/
theorem holomorphic_on_is_analytic {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : IsHolomorphicOn f U) : IsAnalyticOn f U := by sorry
