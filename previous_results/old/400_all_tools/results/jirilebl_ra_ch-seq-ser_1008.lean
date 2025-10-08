import Mathlib

/-- Let (x_n) be convergent with limit `l` and define `y_n = min (x_n) 0`.
    Then `y_n` tends to `min l 0`. (In particular `lim y_n ≤ 0`.) -/
theorem min_seq_tendsto_min {x : ℕ → ℝ} {l : ℝ} (hx : Filter.Tendsto x Filter.atTop (nhds l)) :
  Filter.Tendsto (fun n => min (x n) 0) Filter.atTop (nhds (min l 0)) := by sorry

/-- In particular the limit `min l 0` is ≤ 0. -/
theorem min_seq_limit_le_zero {x : ℕ → ℝ} {l : ℝ} (hx : Filter.Tendsto x Filter.atTop (nhds l)) :
  min l 0 ≤ 0 := by sorry
