import Mathlib

/-- Define f_n : [0,1] → ℝ by f_n(x) = x^n. Show that the sequence (f_n) does not converge uniformly on [0,1]. -/
theorem Munkres_exercise_21_6b :
  ¬ TendstoUniformlyOn (fun n x : ℕ × ℝ => (x.2 ^ n.1)) (fun x => if x = (1 : ℝ) then 1 else 0) atTop (Icc (0 : ℝ) 1) := by sorry
