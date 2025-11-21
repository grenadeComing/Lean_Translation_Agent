import Mathlib

theorem exists_primitive_root_zmod_units_iff :
  ∀ n : ℕ, IsCyclic (Units (ZMod n)) ↔
    (n = 2 ∨ n = 4 ∨ (∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = p ^ t) ∨ (∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = 2 * p ^ t)) := by sorry
