import Mathlib

open Set

theorem Munkres_exercise_31_1 {X : Type*} [TopologicalSpace X] (h : RegularSpace X) :
  ∀ x y : X, x ≠ y →
    ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ (closure U ∩ closure V = ∅) :=
by
  sorry
