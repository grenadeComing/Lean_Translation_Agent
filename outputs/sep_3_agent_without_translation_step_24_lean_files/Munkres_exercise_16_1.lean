import Mathlib

/-!
Exercise: Show that if Y is a subspace of X, and A is a subset of Y,
then the topology A inherits as a subspace of Y is the same as the topology
it inherits as a subspace of X.
-/

theorem Munkres_exercise_16_1 {X : Type*} (t : TopologicalSpace X) {Y A : Set X} (h : A ⊆ Y) :
  TopologicalSpace.induced (fun a : Subtype A => (⟨(a : X), h a.property⟩ : Subtype Y))
    (TopologicalSpace.induced (fun y : Subtype Y => (y : X)) t) =
  TopologicalSpace.induced (fun a : Subtype A => (a : X)) t := by
  sorry
