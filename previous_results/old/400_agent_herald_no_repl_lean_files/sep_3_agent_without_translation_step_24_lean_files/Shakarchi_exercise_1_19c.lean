import Mathlib

open Complex

theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : Complex.abs z = 1) (hz1 : z ≠ 1) :
  Summable (fun n : ℕ => z ^ (n + 1) / (n + 1)) := by
  -- Proof omitted: apply Dirichlet's test using boundedness of partial sums of z^n
  sorry
