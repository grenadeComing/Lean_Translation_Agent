import Mathlib

/-!
Dummit & Foote, Ex. 3.4.4:
Use Cauchy's Theorem and induction to show that a finite abelian group
has a subgroup of order n for each positive divisor n of its order.
-/

variable {G : Type _} [Group G] [Fintype G] [CommGroup G]

theorem finite_abelian_group_has_subgroup_of_order (n : ℕ) (h : n ∣ Fintype.card G) :
  ∃ H : Subgroup G, Fintype.card H = n := by sorry
