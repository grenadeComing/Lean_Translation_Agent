import Mathlib

/-!
Exercise (Axler 1.8).
Prove that the intersection of any collection of subspaces (submodules) of V is a subspace of V.
We state that the intersection of a family of submodules is equal to some Submodule R V.
-/

theorem Axler_exercise_1_8 {R : Type _} {V : Type _} [Semiring R] [AddCommMonoid V] [Module R V]
  {ι : Type _} (S : ι → Submodule R V) :
  ∃ (W : Submodule R V), (W : Set V) = ⋂ i, (S i : Set V) := by
  sorry
