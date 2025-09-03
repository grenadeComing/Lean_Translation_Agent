import Mathlib
open Set Filter TopologicalSpace Bornology
open scoped ENNReal NNReal Uniformity Topology
open Lean Meta Qq Function
open Metric

/-- Let f be a real uniformly continuous function on the bounded set E in R^1. Prove that f is bounded on E. -/
theorem isBounded_of_uniformContinuous_of_bounded_tac_35206 (f : ℝ → ℝ) (E : Set ℝ) (hE : IsBounded E) (hf : UniformContinuousOn f E) : IsBoundedOn f E := by sorry
