import Mathlib

/-!
Statement: If f : U → ℂ is holomorphic on an open set U ⊆ ℂ (i.e. complex-differentiable on U),
then f is analytic on U.
-/

theorem holomorphic_on_analytic_on {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U := by sorry
