import Mathlib

open Filter

/-- If a monotone sequence of real numbers converges to the value of one of its terms x_k,
    then the sequence is constant equal to x_k from index k onward. -/
theorem monotone_convergent_const_of_limit_eq_index {x : ℕ → ℝ} {k : ℕ}
  (hmono : Monotone x) (hconv : Tendsto x atTop (𝓝 (x k))) :
  ∀ n, n ≥ k → x n = x k := by sorry
