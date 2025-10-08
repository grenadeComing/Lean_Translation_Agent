import Mathlib

/-!
Exercise: Let V be a vector space over an infinite field F. Prove that V is not the union of finitely many proper subspaces.
This file states the result in Lean4 / mathlib style. The proof is omitted (sorry).
-/-

theorem Artin_exercise_3_7_2 {F : Type*} [Field F] {V : Type*} [AddCommGroup V] [Module F V]
  (infF : Infinite F) :
  ∀ (s : Finset (Submodule F V)), (∀ W (h : W ∈ s), W ≠ (⊤ : Submodule F V)) →
    ∃ v : V, ∀ W (h : W ∈ s), v ∉ W := by sorry
