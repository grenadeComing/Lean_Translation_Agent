import Mathlib

open Equiv

theorem sym_group_generated_by_transposition_and_ncycle (n : ℕ) (hn : 2 ≤ n) [NeZero n] :
  ∃ c : Equiv.Perm (Fin n),
    Subgroup.closure ({Equiv.swap (0 : Fin n) (1 : Fin n), c} : Set (Equiv.Perm (Fin n))) = (⊤ : Subgroup (Equiv.Perm (Fin n))) := by
  sorry
