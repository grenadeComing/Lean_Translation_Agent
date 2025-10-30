import Mathlib

open scoped BigOperators

-- Let x : ℕ → ℝ have bounded partial sums, lam : ℕ → ℝ tends to 0, and the total variation is summable: ∑ |lam (n+1) - lam n| < ∞. Then ∑ lam n * x n converges.
theorem bounded_partial_sums_converges_of_variation
  {x : ℕ → ℝ} {lam : ℕ → ℝ}
  (hS : ∃ M, ∀ n, |Finset.sum (Finset.range n) (fun i => x i)| ≤ M)
  (hlam : Tendsto lam atTop (𝓝 0))
  (hvar : Summable (fun n => |lam (n+1) - lam n|)) :
  Summable (fun n => lam n * x n) := by
  sorry
