import Mathlib

/-- Let R be a set with two binary operations + and ·. Show that R is a ring iff: (1) (R,+) is an abelian group with identity 0; (2) (R,·) is a monoid with identity 1; and (3) a(b+c)=ab+ac and (b+c)a=ba+ca for all a,b,c in R. -/
theorem ring_iff_add_comm_group_monoid_and_distrib (R : Type _) :
  Ring R ↔ (AddCommGroup R ∧ Monoid R ∧ (∀ a b c : R, a * (b + c) = a * b + a * c) ∧ (∀ a b c : R, (b + c) * a = b * a + c * a)) := by sorry
