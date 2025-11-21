import Mathlib

open Filter

/-- Suppose {x_n} converges and x_n ≤ y_n for all n. Show that liminf_{n→∞} x_n ≤ liminf_{n→∞} y_n. -/
theorem liminf_le_liminf_of_le {x y : ℕ → ℝ} {l : ℝ} (hx : Tendsto x atTop (nhds l))
  (h_le : ∀ n, x n ≤ y n) :
  (liminf x atTop) ≤ (liminf y atTop) := by sorry

/-- Suppose {x_n} converges and x_n ≤ y_n for all n. Show that limsup_{n→∞} x_n ≤ limsup_{n→∞} y_n. -/
theorem limsup_le_limsup_of_le {x y : ℕ → ℝ} {l : ℝ} (hx : Tendsto x atTop (nhds l))
  (h_le : ∀ n, x n ≤ y n) :
  (limsup x atTop) ≤ (limsup y atTop) := by sorry