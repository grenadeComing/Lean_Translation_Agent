import Mathlib

open Filter BigOperators

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If the partial sums of `x : ℕ → E` are bounded, `λ : ℕ → ℝ` tends to zero, and the
    series of variations `∑ |λ (n+1) - λ n|` is summable, then `∑ λ_n • x_n` is summable. -/
theorem summable_of_bounded_partial_sums_and_variation {x : ℕ → E} {λ : ℕ → ℝ}
  (h_bounded : ∃ C, ∀ n, ‖∑ i in Finset.range (n + 1), x i‖ ≤ C)
  (hλ : Tendsto λ atTop (𝓝 (0 : ℝ)))
  (h_var : Summable fun n => abs (λ (n + 1) - λ n)) :
  Summable fun n => λ n • x n := by
  -- proof omitted
  sorry
