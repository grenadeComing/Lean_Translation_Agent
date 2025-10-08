import Mathlib

/-!
Let G,H ⊆ GL(n, R) be matrix groups (subgroups of the general linear group of n×n
matrices over a commutative ring R). Then G ∩ H is again a matrix group.
-/

universe u v

theorem matrix_group_inter
  {n : Type u} [DecidableEq n] [Fintype n]
  {R : Type v} [CommRing R]
  (G H : Subgroup (GL n R)) :
  ∃ (K : Subgroup (GL n R)), (K : Set (GL n R)) = (G : Set (GL n R)) ∩ (H : Set (GL n R)) := by
  sorry
