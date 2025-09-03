import Mathlib


/-- Show that the subgroup of all rotations in a dihedral group is a maximal subgroup. -/
theorem rotations_maximal {n : ℕ} : ∀ H : Subgroup (DihedralGroup n), H ≤ Subgroup.closure {DihedralGroup.r n} → H = Subgroup.closure {DihedralGroup.r n} ∨ H = ⊤ := by sorry
