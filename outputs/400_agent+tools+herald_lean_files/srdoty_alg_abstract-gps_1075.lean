import Mathlib

/-- For n ≥ 3, the center of the symmetric group on n letters is trivial. -/
theorem subgroup_center_perm_fin_eq_bot (n : Nat) (hn : 3 ≤ n) :
  Subgroup.center (Equiv.Perm (Fin n)) = (⊥ : Subgroup (Equiv.Perm (Fin n))) := by sorry
