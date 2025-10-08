import Mathlib
open Filter
open Topology

/--
Let x_n be convergent with limit `l`, and define y_n = max (x_n) 0.
Then the sequence y_n converges to `max l 0`, in particular its limit is ≥ 0.
-/
theorem seq_max_limit_nonneg {x : ℕ → ℝ} {l : ℝ} (h : Tendsto x atTop (𝓝 l)) :
  Tendsto (fun n => max (x n) 0) atTop (𝓝 (max l 0)) ∧ 0 ≤ max l 0 := by sorry
