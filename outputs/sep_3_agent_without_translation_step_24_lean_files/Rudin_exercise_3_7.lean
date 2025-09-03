import Mathlib

open Real

/-- Rudin exercise 3.7: If (a_n) is a sequence of nonnegative reals with ∑ a_n convergent,
    then ∑ sqrt(a_n)/n (n starting at 1) converges. -/
theorem Rudin_exercise_3_7 {a : ℕ → ℝ} (h_nonneg : ∀ n, 0 ≤ a n) (h_sum : Summable a) :
  Summable fun n => Real.sqrt (a (n+1)) / (n+1 : ℝ) := by
  sorry
