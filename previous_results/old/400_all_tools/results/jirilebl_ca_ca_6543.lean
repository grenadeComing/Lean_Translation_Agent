import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function
open scoped Topology Filter NNReal Real

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic. If p ∈ U and f'(p) ≠ 0, then for sufficiently small δ > 0, f restricted to Δ_δ(p) is injective. -/
theorem injOn_ball_of_deriv_ne_zero {f : ℂ → ℂ} {p : ℂ} {U : Set ℂ} {δ : ℝ}
    (hf : DifferentiableOn ℂ f U) (hU : IsOpen U) (hp : p ∈ U) (hf' : deriv f p ≠ 0) (hδ : 0 < δ) :
    InjOn f (ball p δ) := by
  -- The proof is omitted; this file only translates the statement.
  sorry
