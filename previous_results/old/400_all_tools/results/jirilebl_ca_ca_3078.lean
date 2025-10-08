import Mathlib

open Complex Set
open scoped Topology

/-- If f : U → ℂ is a holomorphic function on an open set U ⊆ ℂ, then f is analytic on U.

In Lean: for an open set U : Set ℂ and f : ℂ → ℂ, if f is complex-differentiable on U
(DifferentiableOn ℂ f U), then AnalyticOn ℂ f U. -/
theorem analyticOn_of_differentiableOn {U : Set ℂ} {f : ℂ → ℂ} (h : DifferentiableOn ℂ f U) :
  AnalyticOn ℂ f U := by sorry
