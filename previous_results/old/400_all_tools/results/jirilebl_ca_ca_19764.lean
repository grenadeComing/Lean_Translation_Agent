import Mathlib
open TopologicalSpace Filter
open scoped Topology

/-- If U ⊆ ℂ is open and f : ℂ → ℂ is differentiable on U, then f is analytic on U. -/
theorem holomorphic_on_analytic (f : ℂ → ℂ) (U : Set ℂ) (hopen : IsOpen U)
  (h : DifferentiableOn ℂ f U) : AnalyticOn ℂ f U := by sorry
