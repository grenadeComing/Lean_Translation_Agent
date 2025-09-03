import Mathlib

/-- Any two nonabelian groups of order 21 are isomorphic. -/
theorem nonabelian_groups_order_21_isomorphic {G H : Type*} [Group G] [Fintype G] [Group H] [Fintype H]
  (hG : Fintype.card G = 21) (hH : Fintype.card H = 21) (hGnon : ¬ CommGroup G) (hHnon : ¬ CommGroup H) :
  Nonempty (G ≃* H) :=
by sorry
