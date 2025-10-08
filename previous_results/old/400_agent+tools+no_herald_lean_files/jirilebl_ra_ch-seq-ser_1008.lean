import Mathlib

theorem seq_min_nonpos {x : ℕ → ℝ} {L : ℝ} (h : Filter.Tendsto x Filter.atTop (nhds L)) :
  Filter.Tendsto (fun n => min (x n) 0) Filter.atTop (nhds (min L 0)) ∧ min L 0 ≤ 0 := by sorry
