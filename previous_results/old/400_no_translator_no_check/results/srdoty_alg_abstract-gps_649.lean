import Mathlib

variable (R : Type _)

theorem ring_iff_addcommgroup_monoid_and_distrib :
  Ring R ↔ (AddCommGroup R ∧ Monoid R ∧ ∀ a b c : R, a * (b + c) = a * b + a * c ∧ (b + c) * a = b * a + c * a) := by sorry
