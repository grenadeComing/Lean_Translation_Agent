import Mathlib

/-- Rudin exercise 3.2(a): show that the sequence sqrt(n^2 + n) - n tends to 1/2. -/
theorem Rudin_exercise_3_2a :
  Tendsto (fun n : ℕ => Real.sqrt ((n : ℝ) ^ 2 + n) - n) Filter.atTop (𝓝 (1 / 2 : ℝ)) := by sorry
