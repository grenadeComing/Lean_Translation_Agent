import Mathlib

/-- If Y is a subspace of X, and A ⊆ Y, then the subspace topology A inherits from Y is the
same as the subspace topology A inherits from X. -/
theorem Munkres_exercise_16_1 {X : Type*} [TopologicalSpace X] {Y A : Set X} (h : A ⊆ Y) :
  let iY : Subtype Y → X := fun y => (y : X)
  let iA_Y : Subtype A → Subtype Y := fun a => ⟨a.1, h a.2⟩
  let iA_X : Subtype A → X := fun a => (a : X)
  TopologicalSpace.induced iA_Y (TopologicalSpace.induced iY (inferInstance : TopologicalSpace X)) =
    TopologicalSpace.induced iA_X (inferInstance : TopologicalSpace X) := by sorry
