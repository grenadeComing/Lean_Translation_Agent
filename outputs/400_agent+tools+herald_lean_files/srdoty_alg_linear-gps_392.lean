import Mathlib

/-!
Let G, H be matrix groups (subgroups of the units of the matrix algebra).
We show their intersection is again a matrix group.
-/

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- If G and H are subgroups of the general linear group GL(n, R) (realized as the units of
`Matrix n n R`), then their intersection is again a subgroup (a matrix group). -/
def matrix_group_intersection (G H : Subgroup ((Matrix n n R)ˣ)) : Subgroup ((Matrix n n R)ˣ) := by sorry
