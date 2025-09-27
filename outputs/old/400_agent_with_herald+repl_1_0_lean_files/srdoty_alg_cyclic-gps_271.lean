import Mathlib

/-
There is a primitive root in the multiplicative group Z_n^× iff
n = 2, 4, p^t, or 2 * p^t where p is an odd prime.
-/

theorem exists_primitive_root_iff {n : ℕ} :
  IsCyclic ((ZMod n)ˣ) ↔ n = 2 ∨ n = 4 ∨ ∃ (p t : ℕ), p.Prime ∧ p ≠ 2 ∧ (n = p ^ t ∨ n = 2 * p ^ t) := by sorry
