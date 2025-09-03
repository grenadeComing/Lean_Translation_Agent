import Mathlib

/-- If (a_n) is a nonnegative summable sequence of real numbers, then
    the series sum_{n=1}^\infty sqrt(a_n)/n converges. -/
theorem Rudin_exercise_3_7 (a : ℕ → ℝ) (h_nonneg : ∀ n, 0 ≤ a n) (h_summ : Summable a) :
  Summable fun n => Real.sqrt (a (n+1)) / (n+1 : ℝ) := by sorry
