import Mathlib

open Matrix

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n]

/-- Let G,H be matrix groups (subgroups of GL(n, R)). Then G ∩ H is a matrix group. -/
theorem intersection_of_matrix_groups (G H : Subgroup (Matrix n n R)ˣ) : Subgroup (Matrix n n R)ˣ := by
  sorry
