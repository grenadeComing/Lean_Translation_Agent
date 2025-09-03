import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

theorem Munkres_exercise_31_2 (h : NormalSpace X) {A B : Set X} (hA : IsClosed A) (hB : IsClosed B) (hdis : A ∩ B = ∅) :
  ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ A ⊆ U ∧ B ⊆ V ∧ closure U ∩ closure V = ∅ := by
  sorry
