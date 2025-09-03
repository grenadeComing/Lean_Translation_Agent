import Mathlib
open Set Filter TopologicalSpace Bornology
open scoped ENNReal NNReal Uniformity Topology
open Lean Meta Qq Function

/-- Prove that every compact metric space $K$ has a countable base. -/
theorem Rudin_exercise_2_25 (K : Type u_2) [MetricSpace K] [CompactSpace K] : SecondCountableTopology K := by sorry
