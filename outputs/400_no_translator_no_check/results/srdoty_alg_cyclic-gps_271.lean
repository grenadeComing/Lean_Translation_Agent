import Mathlib

open Nat

/-- There is a primitive root in the multiplicative group ZMod n ↔
    n = 2, 4, p^t, or 2 * p^t for some odd prime p and t ≥ 1. -/
theorem zmod_units_cyclic_iff {n : ℕ} :
  IsCyclic ((ZMod n)ˣ) ↔
    n = 2 ∨ n = 4 ∨
    (∃ (p t : ℕ), p.Prime ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = p ^ t) ∨
    (∃ (p t : ℕ), p.Prime ∧ p ≠ 2 ∧ 1 ≤ t ∧ n = 2 * p ^ t) := by
  sorry
