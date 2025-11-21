import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic. If p ∈ U and f'(p) ≠ 0, then for sufficiently small δ > 0, f restricted to Δ_δ(p) is injective. -/
theorem injOn_ball_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hd : DifferentiableOn ℂ f U) (hU : IsOpen U) (hp : p ∈ U) (hf : deriv f p ≠ 0) :
  ∃ δ > 0, ball p δ ⊆ U ∧ Set.InjOn f (ball p δ) := by sorry