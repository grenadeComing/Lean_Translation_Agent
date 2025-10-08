import Mathlib

/-- If G and H are subgroups of GL(n, R), then their intersection is a subgroup of GL(n, R). -/
def subgroup_inter_GL {R : Type*} [CommRing R] {n : Type*} [DecidableEq n] [Fintype n]
  (G H : Subgroup (GL n R)) : Subgroup (GL n R) := by
  sorry
