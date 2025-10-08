import Mathlib

open Filter

theorem seq_max_lim_nonneg (x : ℕ → ℝ) (a : ℝ) (hx : Tendsto x atTop (nhds a)) :
  Tendsto (fun n => max (x n) (0 : ℝ)) atTop (nhds (max a 0)) ∧ max a 0 ≥ 0 := by
  sorry
