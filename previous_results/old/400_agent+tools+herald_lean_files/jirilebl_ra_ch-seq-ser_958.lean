import Mathlib

open Filter

variable {α : Type _} [ConditionallyCompleteLattice α]

/-- If x_n ≤ y_n for all n, then liminf x ≤ liminf y. -/
theorem liminf_le_liminf_of_le {x y : ℕ → α} (hle : ∀ n, x n ≤ y n) :
  Filter.liminf x atTop ≤ Filter.liminf y atTop := by sorry

/-- If x_n ≤ y_n for all n, then limsup x ≤ limsup y. -/
theorem limsup_le_limsup_of_le {x y : ℕ → α} (hle : ∀ n, x n ≤ y n) :
  Filter.limsup x atTop ≤ Filter.limsup y atTop := by sorry
