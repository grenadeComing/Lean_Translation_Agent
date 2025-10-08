import Mathlib

open Set

/-- If X is locally path connected (every point has a path-connected open neighborhood),
    then every connected open set in X is path connected. -/
theorem Munkres_exercise_25_4 {X : Type*} [TopologicalSpace X]
  (hloc : ∀ x : X, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧ IsPathConnected U) :
  ∀ s : Set X, IsOpen s → IsConnected s → IsPathConnected s := by sorry
