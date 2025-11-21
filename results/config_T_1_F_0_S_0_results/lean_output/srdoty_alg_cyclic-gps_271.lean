import Mathlib

/-- There is a primitive root in the multiplicative group ZMod n if and only if
    n = 2, 4, p^t, or 2 * p^t, where p is an odd prime. We state this as the units
    group of ZMod n being cyclic. The theorem is stated for n ≥ 2 to avoid the
    degenerate modulus 1. -/
theorem zmod_units_cyclic_iff {n : ℕ} (hn : 2 ≤ n) :
  IsCyclic (ZMod n)ˣ ↔
    n = 2 ∨ n = 4 ∨ (∃ (p t : ℕ), Prime p ∧ p ≠ 2 ∧ n = p ^ t) ∨
      (∃ (p t : ℕ), Prime p ∧ p ≠ 2 ∧ n = 2 * p ^ t) := by sorry