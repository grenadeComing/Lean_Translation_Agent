import Mathlib

open Equiv

theorem symmetric_group_center_trivial {n : Nat} (hn : 3 ≤ n) :
  Subgroup.center (Perm (Fin n)) = ⊥ := by sorry
