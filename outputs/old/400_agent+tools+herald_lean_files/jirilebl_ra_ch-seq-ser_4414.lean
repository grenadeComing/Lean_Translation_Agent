import Mathlib

open Filter
open Finset

variable {x lam : ℕ → ℝ}

/-- If the partial sums of x are bounded, lam_n → 0, and
    ∑ |lam_{n+1}-lam_n| is summable, then ∑ lam_n * x_n is summable. -/
theorem jirilebl_ra_ch_seq_ser_4414
  (h_bound : ∃ C : ℝ, ∀ n : ℕ, abs (Finset.sum (Finset.range (n+1)) (fun i => x i)) ≤ C)
  (h_lam : Filter.Tendsto lam Filter.atTop (nhds (0 : ℝ)))
  (h_diff : Summable fun n => abs (lam (n+1) - lam n)) :
  Summable fun n => lam n * x n := by
  sorry
