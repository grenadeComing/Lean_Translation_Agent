import Mathlib

/-- Let n ≥ 3. Prove that the center Z(Sym_n) of the symmetric group on n letters is trivial. -/
theorem center_symm_group_trivial {n : Nat} (h : 3 ≤ n) :
  Subgroup.center (Equiv.Perm (Fin n)) = (⊥ : Subgroup (Equiv.Perm (Fin n))) := by sorry
