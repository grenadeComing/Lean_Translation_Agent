import Mathlib

/-- Rudin exercise: If (a n) is a sequence of nonnegative real numbers with Σ a_n convergent,
then Σ (sqrt(a_n) / (n+1)) converges. We use denominator (n+1) to avoid division by 0. -/
theorem Rudin_exercise_3_7 {a : ℕ → ℝ} (h_nonneg : ∀ n, 0 ≤ a n) (h_sum : Summable a) :
  Summable fun n => Real.sqrt (a n) / (n + 1 : ℝ) := by sorry
