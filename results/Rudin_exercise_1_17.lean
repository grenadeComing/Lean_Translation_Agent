import Mathlib
open BigOperators

/-- Squared norm for vectors in R^k represented as Fin k → ℝ. -/
def sq_norm {k : ℕ} (v : Fin k → ℝ) : ℝ := ∑ i : Fin k, (v i) ^ 2

theorem Rudin_exercise_1_17 {k : ℕ} (x y : Fin k → ℝ) :
  sq_norm (fun i => x i + y i) + sq_norm (fun i => x i - y i) = 2 * sq_norm x + 2 * sq_norm y := by
  sorry
