import Mathlib
open BigOperators Filter Finset

theorem jirilebl_ra_ch_seq_ser_4420 {x : ℕ → ℝ} {a : ℕ → ℝ}
  (h_bdd : ∃ M : ℝ, ∀ n : ℕ, abs ((range (n+1)).sum fun i => x i) ≤ M)
  (h_a : Tendsto a atTop (nhds (0 : ℝ)))
  (hvar : Summable (fun n => abs (a (n+1) - a n))) :
  Summable (fun n => a n * x n) := by sorry
