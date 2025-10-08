import Mathlib

open Set

theorem Munkres_exercise_31_2 {X : Type _} [TopologicalSpace X] [NormalSpace X] {s t : Set X}
  (hs : IsClosed s) (ht : IsClosed t) (hdis : Disjoint s t) :
  ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ s ⊆ U ∧ t ⊆ V ∧ Disjoint (closure U) (closure V) := by sorry
