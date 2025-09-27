import Mathlib

open Filter

theorem seq_max_limit_nonneg {x : ℕ → ℝ} {l : ℝ} (h : Tendsto x atTop (nhds l)) :
  Tendsto (fun n => max (x n) 0) atTop (nhds (max l 0)) ∧ 0 ≤ max l 0 := by sorry
