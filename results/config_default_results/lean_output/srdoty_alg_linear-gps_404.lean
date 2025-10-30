import Mathlib
open Matrix
open LinearMap

/-- Let D(n) be the set of all diagonal matrices in GL(n). Show that D(n) is a matrix group. -/
theorem isSubgroup_set_diagonal_GL (n : Type u) [DecidableEq n] [Fintype n] [CommRing R] :
  IsSubgroup (DiagonalGroup n R) := by
  sorry
