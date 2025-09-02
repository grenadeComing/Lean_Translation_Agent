import Mathlib

open Filter Set

theorem Rudin_exercise_5_5 (f : ℝ → ℝ) (h_diff : DifferentiableOn ℝ f (Set.Ioi (0 : ℝ)))
  (h_deriv : Tendsto (fun x => deriv f x) atTop (𝓝 (0 : ℝ))) :
  Tendsto (fun x => f (x + 1) - f x) atTop (𝓝 (0 : ℝ)) := by
  sorry
