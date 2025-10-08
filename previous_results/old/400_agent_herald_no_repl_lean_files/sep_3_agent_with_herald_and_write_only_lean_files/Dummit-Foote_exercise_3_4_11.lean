import Mathlib

/--
If H is a nontrivial normal subgroup of the solvable group G then there is a nontrivial
subgroup A of H with A ⊲ G and A abelian.
-/
theorem Dummit_Foote_exercise_3_4_11
  {G : Type _} [Group G] (H : Subgroup G) (H_nontrivial : H ≠ ⊥) (H_normal : H.normal) (G_solvable : Solvable G) :
  ∃ A : Subgroup G, A ≤ H ∧ A.normal ∧ A ≠ ⊥ ∧ IsAbelian A := by sorry
