import Mathlib

open Filter

/-- If a monotone sequence of reals converges to one of its values x_k, then it is constant from k onward. -/
theorem monotone_sequence_const_from_k {x : ℕ → ℝ} (hmono : Monotone x) {k : ℕ} (hlim : Tendsto x atTop (nhds (x k))) : ∀ n, k ≤ n → x n = x k := by sorry
