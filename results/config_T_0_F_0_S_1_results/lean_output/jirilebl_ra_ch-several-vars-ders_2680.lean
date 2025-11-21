import Mathlib

/-!
C^1 implies differentiability: if a function is differentiable on a neighborhood
of a point and its fderiv map is continuous at that point, then the function is
(differentiable) at that point.
-/

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

open Topology

theorem c1_implies_differentiable_at {
  f : E → F} {x : E} :
  (∃ s : Set E, IsOpen s ∧ x ∈ s ∧ DifferentiableOn ℝ f s) →
  ContinuousAt (fun y => fderiv ℝ f y) x →
  DifferentiableAt ℝ f x := by sorry