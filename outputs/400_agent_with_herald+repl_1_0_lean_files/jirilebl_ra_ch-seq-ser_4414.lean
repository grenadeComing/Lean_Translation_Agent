import Mathlib

theorem dirichlet_bounded_variation {E : Type _} [NormedAddCommGroup E] [SMul ℝ E]
  {x : ℕ → E} {a : ℕ → ℝ}
  (hBound : ∃ M : ℝ, ∀ N, ‖∑ i in Finset.range (N+1), x i‖ ≤ M)
  (h_lim : Tendsto a atTop (𝓝 0))
  (hvar : Summable (fun n => |a (n+1) - a n|)) :
  Summable (fun n => a n • x n) := by
  sorry
