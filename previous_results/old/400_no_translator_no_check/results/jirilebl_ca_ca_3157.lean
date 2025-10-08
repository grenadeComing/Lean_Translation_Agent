import Mathlib

/-!
If f : U → ℂ is holomorphic on a domain U ⊆ ℂ, then f is analytic.
In particular, if U is open and f is complex-differentiable on U, then f is AnalyticOn.
This implies that for each z0 ∈ U, f has a Taylor series (i.e. is AnalyticAt z0).
-/

theorem holomorphic_on_analytic {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (h : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U := by
  sorry
