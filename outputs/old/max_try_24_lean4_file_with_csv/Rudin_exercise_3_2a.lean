import Mathlib

open Filter
open Real

/-- Exercise: Prove that lim_{n→∞} sqrt(n^2 + n) - n = 1/2. -/
theorem Rudin_exercise_3_2a :
  Tendsto (fun n : ℕ => sqrt ((n : ℝ) ^ 2 + (n : ℝ)) - (n : ℝ)) atTop (nhds (1 / 2 : ℝ)) := by sorry
