import Mathlib
open BigOperators

/--
Let x, λ : ℕ → ℝ. Suppose the partial sums of x are bounded: ∃ M, ∀ n, |∑_{i=0}^n x_i| ≤ M.
Suppose λ_n → 0 (i.e. ∀ ε > 0, ∃ N, ∀ n ≥ N, |λ n| ≤ ε), and ∑ |λ_{n+1} - λ_n| converges
(Summable fun n => |λ (n+1) - λ n|). Then ∑ λ_n x_n converges (Summable fun n => λ n * x n).
-/
theorem summable_mul_of_tendsto_zero_of_summable_of_bounded {x : ℕ → ℝ} (λ_ : ℕ → ℝ)
  (h_sum : ∃ M, ∀ n, |∑ i in range (n+1), x i| ≤ M)
  (hλ : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → |λ_ n| ≤ ε)
  (h_tsum : Summable fun n => |λ_ (n+1) - λ_ n|) :
  Summable fun n => λ_ n * x n := by sorry
