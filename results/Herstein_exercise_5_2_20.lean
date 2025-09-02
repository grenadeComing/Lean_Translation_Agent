import Mathlib

/-
Herstein Exercise 5.2.20
Let V be a vector space over an infinite field F. Show that V cannot be the
set-theoretic union of a finite number of proper subspaces of V.
-/

variable {F : Type _} [Field F]
variable {V : Type _} [AddCommGroup V] [Module F V]

theorem not_union_of_finitely_many_proper_submodules {n : ℕ} (s : Fin n → Submodule F V)
  (h : ∀ i, s i ≠ ⊤) : ¬ (∀ v : V, ∃ i : Fin n, v ∈ s i) := by sorry
