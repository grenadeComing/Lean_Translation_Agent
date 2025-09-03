import Mathlib

open Real

/-- Define the sequence s_seq : ℕ → ℝ by s_seq 0 = √2 and s_seq (n+1) = √(2 + √(s_seq n)). -/
noncomputable def s_seq : ℕ → ℝ
  | 0 => Real.sqrt 2
  | n + 1 => Real.sqrt (2 + Real.sqrt (s_seq n))

/-- Rudin Exercise 3.3: The sequence converges and is bounded above by 2. -/
theorem Rudin_exercise_3_3 :
  (Filter.Tendsto (fun n => s_seq n) (Filter.atTop : Filter ℕ) (nhds (2 : ℝ)) ∧ ∀ n : ℕ, s_seq n < 2) := by
  sorry
