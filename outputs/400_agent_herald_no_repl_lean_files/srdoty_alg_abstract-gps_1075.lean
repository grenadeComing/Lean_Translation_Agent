import Mathlib

/-!
# Center of the symmetric group

For n ≥ 3 the center of the symmetric group on n letters is trivial.
-/

open Equiv

theorem center_symm_group_trivial {n : ℕ} (hn : 3 ≤ n) :
  Center (Equiv.Perm (Fin n)) = (⊥ : Subgroup (Equiv.Perm (Fin n))) := by sorry
