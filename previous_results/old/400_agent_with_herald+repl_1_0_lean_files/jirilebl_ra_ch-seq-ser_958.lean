import Mathlib

variable {x y : ℕ → ℝ}

theorem liminf_le_liminf (h : ∀ n, x n ≤ y n) :
  Filter.liminf x Filter.atTop ≤ Filter.liminf y Filter.atTop := by sorry

theorem limsup_le_limsup (h : ∀ n, x n ≤ y n) :
  Filter.limsup x Filter.atTop ≤ Filter.limsup y Filter.atTop := by sorry
