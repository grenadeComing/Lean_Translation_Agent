import Mathlib

theorem Sym_generated_by_transposition_and_cycle (n : Nat) (hn : 2 ≤ n) :
  ∃ σ τ : Equiv.Perm (Fin n),
    Subgroup.closure ({σ, τ} : Set (Equiv.Perm (Fin n))) = (⊤ : Subgroup (Equiv.Perm (Fin n))) := by
  sorry
