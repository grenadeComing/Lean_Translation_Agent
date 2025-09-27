import Mathlib
open scoped Classical
open Filter Function Nat Set
open scoped Topology

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ. Then the zeros of f - c are isolated:
for every p ∈ U with f p = c there exists δ > 0 such that in U ∩ Metric.ball p δ the only zero is p.
Moreover, locally around p we can factor f(z) - c = (z - p) ^ k * g(z) with k : ℕ and g holomorphic on the ball and g p ≠ 0. -/
theorem zeros_are_isolated_and_local_factor {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {c : ℂ} :
  (∀ p, p ∈ U → f p = c → ∃ δ > 0, ∀ z, z ∈ U ∩ Metric.ball p δ → z ≠ p → f z ≠ c)
  ∧ (∀ p, p ∈ U → f p = c → ∃ (δ : ℝ) (k : ℕ) (g : ℂ → ℂ), 0 < δ ∧
       DifferentiableOn ℂ g (Metric.ball p δ) ∧ (∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) ∧ g p ≠ 0) := by sorry
