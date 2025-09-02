import Mathlib

/-- If (a_n) is a sequence of nonnegative reals and the series Σ_{n≥1} a_n converges,
    then the series Σ_{n≥1} sqrt(a_n)/n converges. -/
theorem Rudin_exercise_3_7 (a : ℕ → ℝ)
  (h_nonneg : ∀ n, 0 ≤ a (n+1))
  (h_sum : Summable fun n => a (n+1)) :
  Summable fun n => Real.sqrt (a (n+1)) / ((n+1) : ℝ) := by sorry
