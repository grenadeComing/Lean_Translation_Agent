import Mathlib

/-!
Let G, H be matrix groups (subgroups of the units of n × n matrices). Show that
there exists a subgroup whose underlying set is G ∩ H (i.e., the intersection is a matrix group).
-/

variable {R : Type _} [Semiring R] {n : Type _} [Fintype n] [DecidableEq n]

theorem matrix_groups_intersection_exists (G H : Subgroup (Units (Matrix n n R))) :
    ∃ K : Subgroup (Units (Matrix n n R)), (K : Set (Units (Matrix n n R))) = (G : Set (Units (Matrix n n R))) ∩ (H : Set (Units (Matrix n n R))) := by
  -- proof omitted
  sorry
