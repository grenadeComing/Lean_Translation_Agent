import Mathlib

/-- Let G, H be matrix groups inside GL(n, R). Prove that G ∩ H is a matrix group. -/
theorem inter_matrix_groups_are_matrix_group {n : ℕ} {R : Type*} [Field R]
  (G H : Subgroup (GL n R)) : Subgroup (GL n R) := by
  -- The intersection of subgroups is a subgroup
  sorry
