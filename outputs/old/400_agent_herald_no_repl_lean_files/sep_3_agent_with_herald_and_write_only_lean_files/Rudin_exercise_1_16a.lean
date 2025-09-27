import Mathlib
open Nat hiding log
open Finset Metric Real
open scoped Pointwise

/-- Suppose k ≥ 3, x, y ∈ R^k, |x - y| = d > 0, and r > 0. Prove that if 2r > d, there are infinitely many z ∈ R^k such that |z-x|=|z-y|=r. -/
theorem Rudin_exercise_1_16a {k : ℕ} (hk : 3 ≤ k) (x y : Fin k → ℝ) (hxy : 0 < dist x y) (r : ℝ) (hr : 2 * r > dist x y) : (Set.Infinite { z : Fin k → ℝ | dist z x = r ∧ dist z y = r }) := by sorry
