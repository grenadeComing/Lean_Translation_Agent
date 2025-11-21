import Mathlib

/-- If G and H are matrix groups (subgroups of the units of n × n matrices over a ring),
then their intersection is again a matrix group. -/
variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n]

theorem matrix_group_inter (G H : Subgroup (Units (Matrix n n R))) : Subgroup (Units (Matrix n n R)) := by sorry