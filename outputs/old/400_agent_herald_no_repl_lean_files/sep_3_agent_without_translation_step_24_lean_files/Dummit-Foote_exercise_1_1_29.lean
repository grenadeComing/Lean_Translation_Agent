import Mathlib

/--
Exercise: Prove that A × B is an abelian group iff both A and B are abelian.
We state abelian as the commutativity of the group operation.
-/
theorem prod_comm_group_iff {G H : Type*} [Group G] [Group H] :
  (∀ x y : G × H, x * y = y * x) ↔ ((∀ a b : G, a * b = b * a) ∧ (∀ c d : H, c * d = d * c)) := by
  sorry
