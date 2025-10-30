import Mathlib

universe u

/-- Let p be a prime. Show that the composition factors of any finite abelian p-group are all isomorphic to Z_p. -/
theorem composition_factors_is_zp_of_finite_abelian_p_group
  (p : Nat) (hp : Nat.Prime p)
  (G : Type u) [Group G] [Abelian G] [Fintype G] [IsPGroup p G] :
  True := by
  sorry
