import Mathlib

theorem field_iff_characterization (F : Type*) :
  Field F ↔
  (AddCommGroup F) ∧
  (∀ a b : F, a * b = b * a) ∧
  (1 : F) ≠ (0 : F) ∧
  (∀ a : F, a ≠ 0 → ∃ b : F, a * b = 1 ∧ b * a = 1) ∧
  (∀ a b c : F, a * (b + c) = a * b + a * c) := by sorry