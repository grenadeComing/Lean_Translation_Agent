import Mathlib

/--
Let U ⊆ ℂ be a domain and f : U → ℂ be holomorphic. In Lean/Mathlib we express
"holomorphic on U" by `DifferentiableOn ℂ f U` (complex differentiable on the open set U),
and "analytic on U" by `AnalyticOn ℂ f U`.

This file states the standard fact that a complex-differentiable function on an open
set is analytic on that set.
-/

theorem holomorphic_on_implies_analytic_on {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (h : DifferentiableOn ℂ f U) : AnalyticOn ℂ f U := by sorry
