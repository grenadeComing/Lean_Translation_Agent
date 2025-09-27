import Mathlib

theorem liminf_le_liminf_of_le {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) :
  Filter.liminf x Filter.atTop ≤ Filter.liminf y Filter.atTop := by
  sorry

theorem limsup_le_limsup_of_le {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) :
  Filter.limsup x Filter.atTop ≤ Filter.limsup y Filter.atTop := by
  sorry
