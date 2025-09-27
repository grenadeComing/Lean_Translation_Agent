import Mathlib

/-!
Let (x_n) be convergent and y_n = min (x_n, 0). Show that lim_{n→∞} y_n ≤ 0.
We state that if x_n → a, then min (x_n, 0) → min a 0 and min a 0 ≤ 0.
-/

open Filter

theorem seq_min_limit_nonpos (x : ℕ → ℝ) (a : ℝ)
  (h : Tendsto x atTop (nhds a)) :
  Tendsto (fun n => min (x n) (0 : ℝ)) atTop (nhds (min a (0 : ℝ))) ∧ (min a (0 : ℝ)) ≤ (0 : ℝ) := by sorry
