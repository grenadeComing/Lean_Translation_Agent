import Mathlib

open Set

theorem subgroups_Z_eq_nz (H : Set ℤ) :
  (0 ∈ H ∧ ∀ a b, a ∈ H → b ∈ H → a - b ∈ H) ↔
  ∃ n : ℕ, H = { k : ℤ | ∃ m : ℤ, k = (n : ℤ) * m } := by sorry
