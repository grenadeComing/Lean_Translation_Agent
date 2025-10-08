import Mathlib
open Filter Finset Function
open scoped Topology

/-- Suppose the series ∑ x_n has bounded partial sums, and s : ℕ → ℝ satisfies
    s_n → 0 and ∑ |s_{n+1} - s_n| converges. Then ∑ s_n • x_n is summable. -/
theorem dirichlet_summability {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {x : ℕ → E} {s : ℕ → ℝ}
  (h_bdd : ∃ C, ∀ n, ‖∑ i in range (n+1), x i‖ ≤ C)
  (hs_zero : Tendsto s atTop (𝓝 0))
  (hs_var : Summable (fun n => |s (n+1) - s n|)) :
  Summable fun n => s n • x n := by sorry
