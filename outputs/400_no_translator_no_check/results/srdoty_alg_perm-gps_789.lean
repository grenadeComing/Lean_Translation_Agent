import Mathlib

open Equiv

noncomputable def rot {n : ℕ} (hn : 2 ≤ n) : Equiv.Perm (Fin n) :=
  Equiv.ofBijective
    (fun i : Fin n => ⟨((i : Nat) + 1) % n, Nat.mod_lt _ (Nat.zero_lt_two.trans_le hn)⟩)
    (by sorry)

theorem symmetric_group_generated {n : ℕ} (hn : 2 ≤ n) :
  Subgroup.closure ({Equiv.swap (Fin.mk 0 (Nat.zero_lt_two.trans_le hn)) (Fin.mk 1 (Nat.one_lt_two.trans_le hn)), rot hn} : Set (Equiv.Perm (Fin n))) =
    (⊤ : Subgroup (Equiv.Perm (Fin n))) := by
  sorry
