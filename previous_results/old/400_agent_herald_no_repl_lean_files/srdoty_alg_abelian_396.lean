import Mathlib

/-!
Let p be a prime. The composition factors of any finite abelian p-group
are all isomorphic to Z_p.

This file gives a formal statement of the simple case: any nontrivial
finite abelian p-group which is simple is (group-)isomorphic to ZMod p.
The proof is omitted (sorry).
-/

theorem simple_finite_abelian_p_group_is_zmod_p (p : ℕ) [hp : Fact (Nat.Prime p)]
  {G : Type _} [Group G] [Fintype G] [Abelian G]
  (h_pgroup : IsPGroup p G) (hne : Fintype.card G > 1) (hsimple : IsSimpleGroup G) :
  G ≃* ZMod p := by sorry
