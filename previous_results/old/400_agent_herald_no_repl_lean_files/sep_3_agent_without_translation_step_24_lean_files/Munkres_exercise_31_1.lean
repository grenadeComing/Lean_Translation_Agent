import Mathlib

universe u

open Set

lemma Munkres_exercise_31_1 {X : Type u} [TopologicalSpace X] [T3Space X] (x y : X) (hxy : x ≠ y) :
  ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ (closure U ∩ closure V = ∅) := by sorry
