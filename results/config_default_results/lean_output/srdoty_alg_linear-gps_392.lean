import Mathlib

variable {R : Type*} [Semiring R] {n : Nat}

/-- If G and H are matrix groups (subgroups of the group of invertible n×n matrices), then their intersection is a matrix group. -/
def matrix_groups_inter (G H : Subgroup (Units (Matrix (Fin n) (Fin n) R))) : Subgroup (Units (Matrix (Fin n) (Fin n) R)) := by sorry
