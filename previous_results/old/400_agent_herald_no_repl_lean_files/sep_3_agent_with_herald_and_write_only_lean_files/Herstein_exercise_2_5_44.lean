import Mathlib

/--
Exercise: Prove that a group of order p^2, p a prime, has a normal subgroup of order p.
This file states the theorem; the proof is omitted (:= by sorry).
-/
theorem group_of_order_p2_has_normal_subgroup_of_order_p (p : ℕ) [hp : Fact p.Prime]
  {G : Type _} [Group G] [Fintype G] (h : Fintype.card G = p ^ 2) :
  ∃ H : Subgroup G, H.normal ∧ Fintype.card H = p := by sorry
