import Mathlib
open Complex
open Set
open scoped Topology

/-- If f : ℂ → ℂ is holomorphic on a domain U ⊆ ℂ, then f is analytic on U. In particular, for any z0 ∈ U, f has a Taylor series about z0 that converges in some disk and sums to f. -/
theorem analyticOn_tac_4206 (f : ℂ → ℂ) (U : Set ℂ) (h : DifferentiableOn ℂ f U) : AnalyticOn ℂ f U := by
  sorry
