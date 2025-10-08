import Mathlib

/--
Equivalence between the bundled `Ring` predicate and the componentwise description:
(1) (R, +) is an additive abelian group;
(2) (R, *) is a monoid with identity `1`;
(3) left and right distributivity of `*` over `+`.
-/
theorem ring_iff_add_comm_group_monoid_and_distrib (R : Type*) :
  Ring R ↔ AddCommGroup R ∧ Monoid R ∧
    (∀ a b c : R, a * (b + c) = a * b + a * c) ∧ (∀ a b c : R, (b + c) * a = b * a + c * a) := by sorry
