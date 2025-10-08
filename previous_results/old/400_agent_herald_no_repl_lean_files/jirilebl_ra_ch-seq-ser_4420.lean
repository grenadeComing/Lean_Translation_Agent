import Mathlib

theorem summable_of_bounded_partial_sums_of_tendsto_zero_of_summable_variation
  (x l : ℕ → ℝ)
  (h_bound : ∃ C : ℝ, ∀ n, |∑ k in Finset.range (n+1), x k| ≤ C)
  (hl0 : Tendsto l atTop (𝓝 0))
  (hvar : Summable (fun n => |l (n+1) - l n|)) :
  Summable (fun n => l n * x n) := by sorry
