import Mathlib

open Set

/-- Define f_n : [0,1] → ℝ by f_n(x) = x^n. Show the sequence (f_n) does not converge uniformly on [0,1]. -/
theorem Munkres_exercise_21_6b :
  ¬ TendstoUniformlyOn (fun n : ℕ => fun x : ℝ => x ^ n) (fun x : ℝ => if x = 1 then (1 : ℝ) else 0) atTop (Set.Icc (0 : ℝ) (1 : ℝ)) := by sorry
