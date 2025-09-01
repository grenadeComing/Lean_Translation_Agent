import Mathlib

/-!
Munkres exercise: Show that if X is regular (in the sense of Munkres: regular and T1),
then every pair of distinct points of X have neighborhoods whose closures are disjoint.
-/

theorem Munkres_exercise_31_1 {X : Type _} [TopologicalSpace X] [T1Space X] [RegularSpace X] :
  ∀ x y : X, x ≠ y → ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ closure U ∩ closure V = ∅ :=
by sorry
