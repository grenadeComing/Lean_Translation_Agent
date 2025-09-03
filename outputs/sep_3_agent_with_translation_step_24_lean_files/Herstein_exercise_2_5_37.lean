import Mathlib

/-- If G is a nonabelian group of order 6, then G is isomorphic to S3.

We state this as the existence of a multiplicative equivalence between G and
the permutation group on 3 letters (Equiv.Perm (Fin 3)). The proof is omitted.
-/
theorem group_of_order_6_noncomm_is_S3 {G : Type _} [Group G] [Fintype G]
  (hcard : Fintype.card G = 6) (hnon : ∃ a b : G, a * b ≠ b * a) :
  Nonempty (MulEquiv G (Equiv.Perm (Fin 3))) := by sorry
