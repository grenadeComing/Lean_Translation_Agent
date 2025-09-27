import Mathlib

/-- If Y is a subspace of X, and A ⊆ Y, then the subspace topology A inherits from Y
    is the same as the subspace topology it inherits from X. -/
theorem Munkres_exercise_16_1 {X : Type _} (t : TopologicalSpace X) {Y A : Set X} (h : A ⊆ Y) :
  TopologicalSpace.induced (fun a : A => ⟨(a : X), h a.2⟩ : A → Y)
    (TopologicalSpace.induced (fun y : Y => (y : X)) t) =
  TopologicalSpace.induced (fun a : A => (a : X)) t := by
  sorry
