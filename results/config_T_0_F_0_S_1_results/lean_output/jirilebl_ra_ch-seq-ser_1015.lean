import Mathlib

open Filter

/--
Let (x_n) be a convergent real sequence with limit `l`, and define y_n = max (x_n) 0.
Then y_n converges to `max l 0`, which in particular is nonnegative.
-/
theorem seq_max_limit_nonneg {x : ℕ → ℝ} {l : ℝ} (h : Tendsto x atTop (𝓝 l)) :
  Tendsto (fun n => max (x n) (0 : ℝ)) atTop (𝓝 (max l 0)) ∧ 0 ≤ max l 0 := by sorry