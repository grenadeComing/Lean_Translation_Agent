import Mathlib

open Submodule

/--
Let V be a vector space over an infinite field F. Show that V cannot be the
set-theoretic union of a finite number of proper subspaces of V.

We state the result: for any finite family of proper submodules Ws, there
exists v ∈ V not contained in any Ws i.
-/
theorem herstein_exercise_5_2_20 {F V : Type*} [Field F] [Infinite F] [AddCommGroup V] [Module F V] :
  ∀ {n : Nat} (Ws : Fin n → Submodule F V), (∀ i, Ws i ≠ ⊤) → ∃ v : V, ∀ i, v ∉ (Ws i : Set V) := by
  sorry
