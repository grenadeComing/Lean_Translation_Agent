import Mathlib

theorem Munkres_exercise_16_1 {X : Type*} [TopologicalSpace X] {Y A : Set X} (h : A ⊆ Y) :
  TopologicalSpace.induced (fun a : Subtype A => ⟨a.val, h a.property⟩)
    (TopologicalSpace.induced (fun y : Subtype Y => (y : X)) (inferInstance : TopologicalSpace X)) =
  TopologicalSpace.induced (fun a : Subtype A => (a : X)) (inferInstance : TopologicalSpace X) := by sorry
