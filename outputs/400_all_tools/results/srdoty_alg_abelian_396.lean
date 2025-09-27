import Mathlib

/-- Let p be a prime and G a finite abelian p-group. If G is simple (a composition factor),
then G is isomorphic to ZMod p (viewed multiplicatively). This formalizes the fact that every
nontrivial simple abelian p-group is cyclic of order p. -/
theorem simple_finite_abelian_p_group_eq_zmod {p : ℕ} (hp : p.Prime) {G : Type*} [Group G]
  [Finite G] [CommGroup G] (hP : IsPGroup p G) (hsimple : IsSimpleGroup G) :
  Nonempty (MulEquiv G (Multiplicative (ZMod p))) := by sorry
