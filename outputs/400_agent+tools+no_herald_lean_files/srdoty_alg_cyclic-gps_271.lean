import Mathlib

/-!
Statement: There is a primitive root in the multiplicative group Z_n^× iff
n = 2, 4, p^t, or 2*p^t where p is an odd prime.
-/

theorem exists_primitive_root_units_zmod_iff (n : ℕ) :
  IsCyclic (Units (ZMod n)) ↔
    n = 2 ∨ n = 4 ∨ (∃ (p : ℕ) (t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = p ^ t)
      ∨ (∃ (p : ℕ) (t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = 2 * p ^ t) := by sorry
