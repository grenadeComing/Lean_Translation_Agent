import Mathlib

open Nat

/-- There is a primitive root in the multiplicative group `ZMod n` (equivalently the unit group `(ZMod n)ˣ` is cyclic)
    if and only if `n = 2`, `n = 4`, `n = p^t`, or `n = 2 * p^t` for an odd prime `p` and `t ≥ 1`. -/
theorem zmod_units_cyclic_iff {n : ℕ} :
  IsCyclic ((ZMod n)ˣ) ↔ n = 2 ∨ n = 4 ∨ ∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ (n = p ^ t ∨ n = 2 * p ^ t) := by sorry
