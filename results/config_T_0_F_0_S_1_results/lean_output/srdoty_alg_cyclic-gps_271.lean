import Mathlib

/--
There is a primitive root in the multiplicative group (ZMod n)ˣ (equivalently, the unit group is cyclic)
iff n = 2, n = 4, or n = p^t or n = 2 * p^t for some odd prime p and t ≥ 1.
-/
theorem zmod_units_is_cyclic_iff (n : ℕ) :
  IsCyclic ((ZMod n)ˣ) ↔
    n = 2 ∨ n = 4 ∨ ∃ (p : ℕ) (t : ℕ), p.Prime ∧ p ≠ 2 ∧ 1 ≤ t ∧ (n = p ^ t ∨ n = 2 * p ^ t) := by sorry
