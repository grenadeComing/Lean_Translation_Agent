import Mathlib

/-- If a group G is isomorphic to S5 (the permutation group on 5 elements)
    and S5 is not solvable, then G is not solvable. -/
theorem not_solvable_of_iso_S5 {G : Type _} [Group G] (φ : G ≃* Equiv.Perm (Fin 5))
  (hS5_not_solvable : ¬ IsSolvable (Equiv.Perm (Fin 5))) : ¬ IsSolvable G := by sorry
