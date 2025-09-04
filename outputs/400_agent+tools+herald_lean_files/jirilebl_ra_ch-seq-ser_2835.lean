import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [CompleteSpace E]

/-- If sum a_n converges absolutely, then any grouping of terms also converges
    and has the same sum. -/
theorem summable_of_grouping_of_abs_summable {a : ℕ → E} {N : ℕ → ℕ}
  (h_abs : Summable fun n => ‖a n‖)
  (hN0 : N 0 = 0)
  (hNmono : StrictMono N)
  (hN_unbounded : ∀ m, ∃ k, N k ≥ m) :
  Summable (fun k => Finset.sum (Finset.range (N (k+1) - N k)) fun i => a (N k + i)) ∧
  tsum (fun k => Finset.sum (Finset.range (N (k+1) - N k)) fun i => a (N k + i)) = tsum a := by sorry
