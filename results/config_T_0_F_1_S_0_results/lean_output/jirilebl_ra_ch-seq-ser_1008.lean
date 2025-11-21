import Mathlib

/-!
Let (x_n) be a convergent real sequence with limit `l` and define y_n := min (x_n) 0.
Then lim y_n = min l 0, in particular lim y_n ≤ 0.
-/

theorem seq_min_limit_le_zero {x : ℕ → ℝ} {l : ℝ}
    (h : Filter.Tendsto x Filter.atTop (nhds l)) :
    Filter.Tendsto (fun n => min (x n) (0 : ℝ)) Filter.atTop (nhds (min l (0 : ℝ))) ∧
      min l (0 : ℝ) ≤ (0 : ℝ) := by sorry
