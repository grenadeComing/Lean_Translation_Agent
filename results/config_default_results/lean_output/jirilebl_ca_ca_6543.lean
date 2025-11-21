import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic. If p ∈ U and f'(p) ≠ 0, then for sufficiently small δ > 0, f restricted to Δ_δ(p) is injective. -/
theorem injOn_ball_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (hfp : deriv f p ≠ 0) : ∃ δ > 0, InjOn f (ball p δ) := by sorry
