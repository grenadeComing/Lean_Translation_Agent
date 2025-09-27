import Mathlib

/--
There is a primitive root in the multiplicative group Z_n^× iff
n = 2, 4, p^t, or 2*p^t where p is an odd prime (and t ≥ 1).
-/
theorem zmod_units_cyclic_iff_primitive_root_exists :
  ∀ n : ℕ, 1 < n →
  IsCyclic (ZMod n)ˣ ↔
    n = 2 ∨ n = 4 ∨
    (∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = p ^ t) ∨
    (∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = 2 * p ^ t) := by sorry
