import Mathlib

/-!
Exercise: Let V be a vector space over an infinite field F. Prove that V is not the union of finitely many proper subspaces.
This file contains a Lean4 translation of the statement (proof omitted).
-/

open Submodule Set

theorem Artin_exercise_3_7_2 {F : Type*} [Field F] {V : Type*} [AddCommGroup V] [Module F V]
  (hinf : Infinite F) :
  ∀ (n : Nat) (S : Fin n → Submodule F V), (∀ i, S i ≠ ⊤) → ∃ v : V, ∀ i, v ∉ (S i : Set V) := by sorry
