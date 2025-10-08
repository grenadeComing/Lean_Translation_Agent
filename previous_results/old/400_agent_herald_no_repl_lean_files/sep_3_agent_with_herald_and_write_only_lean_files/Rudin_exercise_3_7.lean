import Mathlib

/-- Rudin, Exercise 3.7: If (a_n) is a sequence of nonnegative real numbers with Σ a_n convergent,
then Σ sqrt(a_n)/(n+1) converges. We state the result here; the proof is omitted. -/
theorem Rudin_exercise_3_7 {a : ℕ → ℝ} (h_nonneg : ∀ n, 0 ≤ a n) (h_sum : Summable a) :
  Summable fun n => Real.sqrt (a n) / ((n + 1 : ℕ) : ℝ) := by sorry
