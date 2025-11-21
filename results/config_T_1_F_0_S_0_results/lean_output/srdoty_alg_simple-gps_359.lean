import Mathlib

/-- The Classification of Finite Simple Groups (statement only).

Every finite simple group is isomorphic to one of the following:
(1) a cyclic group of prime order;
(2) an alternating group of degree at least 5;
(3) a (nonabelian) simple group of Lie type (including both the classical groups and the exceptional and twisted groups, such as the Tits group);
(4) one of the 26 sporadic simple groups.
-/
theorem classification_of_finite_simple_groups
  {G : Type*} [Group G] [Fintype G] [IsSimpleGroup G] :
  (∃ p : ℕ, IsPrime p ∧ Nonempty (G ≃* ZMod p)) ∨
  (∃ n : ℕ, 5 ≤ n ∧ Nonempty (G ≃* AlternatingGroup n)) ∨
  (IsSimpleGroupOfLieType G) ∨
  (∃ s : SporadicSimpleGroup, Nonempty (G ≃* s)) := by sorry
