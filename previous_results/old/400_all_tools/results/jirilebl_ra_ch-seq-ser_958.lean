import Mathlib

open Filter
open scoped Topology

/-- Suppose (x_n) converges and x_n ≤ y_n for all n. Then liminf x ≤ liminf y. -/
theorem liminf_le_liminf_of_le_of_tendsto {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) (l : ℝ)
  (hx : Tendsto x atTop (𝓝 l)) : Filter.liminf x atTop ≤ Filter.liminf y atTop := by sorry

/-- Suppose (x_n) converges and x_n ≤ y_n for all n. Then limsup x ≤ limsup y. -/
theorem limsup_le_limsup_of_le_of_tendsto {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) (l : ℝ)
  (hx : Tendsto x atTop (𝓝 l)) : Filter.limsup x atTop ≤ Filter.limsup y atTop := by sorry
