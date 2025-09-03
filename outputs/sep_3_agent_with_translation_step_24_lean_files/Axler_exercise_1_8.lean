import Mathlib

/-!
Exercise (Axler 1.8).
Prove that the intersection of any collection of subspaces of V is a subspace of V.
We state this by exhibiting a Submodule whose underlying set is the intersection.
-/

theorem Axler_exercise_1_8 {K : Type*} [Field K] {V : Type*} [AddCommGroup V] [Module K V]
  (S : Set (Submodule K V)) :
  ∃ W : Submodule K V, (W : Set V) = {v | ∀ U ∈ S, v ∈ (U : Set V)} := by
  sorry
