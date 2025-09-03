import Mathlib

open Set

/-- Rudin, Principles of Mathematical Analysis, Exercise 5.6

Let f be continuous on [0,∞), differentiable on (0,∞), f(0)=0, and f' monotone increasing on (0,∞).
Define g(x) = f(x)/x for x>0. Then g is monotone increasing on (0,∞).
-/
theorem Rudin_exercise_5_6 {f : ℝ → ℝ}
  (h_cont : ContinuousOn f (Ici (0 : ℝ)))
  (h_diff : DifferentiableOn ℝ f (Ioi (0 : ℝ)))
  (h0 : f 0 = 0)
  (h_der_mono : MonotoneOn (fun x => deriv f x) (Ioi (0 : ℝ))) :
  MonotoneOn (fun x => f x / x) (Ioi (0 : ℝ)) := by
  sorry
