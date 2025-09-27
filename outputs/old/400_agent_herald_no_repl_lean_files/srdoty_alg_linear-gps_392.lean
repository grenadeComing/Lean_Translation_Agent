import Mathlib

variable {R : Type*} {n : Type*}
  [CommRing R] [Fintype n] [DecidableEq n]

/-- Let G, H ⊆ GL(n, R) be matrix groups (subgroups of the general linear group).
    Then their intersection as sets equals the infimum of the subgroups, hence is
    the underlying set of a subgroup (i.e. a matrix group). -/
theorem matrix_groups_inter (G H : Subgroup (GeneralLinearGroup n R)) :
  (G : Set (GeneralLinearGroup n R)) ∩ (H : Set (GeneralLinearGroup n R)) = (G ⊓ H : Set (GeneralLinearGroup n R)) := by sorry
