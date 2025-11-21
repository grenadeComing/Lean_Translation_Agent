import Mathlib

variable {n : Type _} {R : Type _} [DecidableEq n] [Fintype n] [CommRing R]

/-- The intersection of two matrix groups (subgroups of GL n R) is again a matrix group. -/
def intersection_of_matrix_groups_is_matrix_group (G H : Subgroup (GL n R)) : Subgroup (GL n R) := by
  sorry
