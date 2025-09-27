import Mathlib

universe u

/-- Let R be a set with two binary operations + and ·. Show that R is a ring iff:
  (1) (R, +) is an abelian group with identity 0;
  (2) (R, ·) is a monoid with identity 1;
  (3) left and right distributivity hold.
-/
theorem ring_structure_iff_components (R : Type u) :
  Nonempty (Ring R) ↔ (Nonempty (AddCommGroup R) ∧ Nonempty (Monoid R) ∧ (∀ (a b c : R), a * (b + c) = a * b + a * c) ∧ (∀ (a b c : R), (a + b) * c = a * c + b * c)) := by
  sorry
