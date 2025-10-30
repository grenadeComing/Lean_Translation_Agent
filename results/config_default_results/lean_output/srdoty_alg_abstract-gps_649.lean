import Mathlib

theorem ring_iff_conditions (R : Type*) :
  Nonempty (Ring R) ↔
    (Nonempty (AddCommGroup R) ∧ Nonempty (Monoid R) ∧
      (∀ a b c : R, a * (b + c) = a * b + a * c) ∧
      (∀ a b c : R, (a + b) * c = a * c + b * c)) := by
  sorry
