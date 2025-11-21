import Mathlib

theorem ring_iff_add_comm_group_monoid_distrib (R : Type _) :
  Ring R ↔
    AddCommGroup R ∧
    Monoid R ∧
    (∀ a b c : R, a * (b + c) = a * b + a * c) ∧
    (∀ a b c : R, (b + c) * a = b * a + c * a) := by sorry
