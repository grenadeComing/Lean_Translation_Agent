import Mathlib

open Set

/-- If S is totally bounded and f is continuous on S then f is uniformly continuous on S. -/
theorem continuous_on_totally_bounded_uniform_continuous_on {X : Type*} [MetricSpace X]
  {S : Set X} {f : X → ℝ} (hS : TotallyBounded S) (hf : ContinuousOn f S) :
  UniformContinuousOn f S := by sorry

/-- If S is totally bounded and f is continuous on S then f is bounded on S. -/
theorem continuous_on_totally_bounded_bounded {X : Type*} [MetricSpace X]
  {S : Set X} {f : X → ℝ} (hS : TotallyBounded S) (hf : ContinuousOn f S) :
  ∃ M : ℝ, ∀ x ∈ S, |f x| ≤ M := by sorry
