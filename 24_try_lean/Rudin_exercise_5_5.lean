import Mathlib

open Filter Set

/-- Rudin, Exercise 5.5:
Suppose f is defined and differentiable for every x > 0, and f' (x) → 0 as x → +∞.
Put g(x) = f(x+1) - f(x). Then g(x) → 0 as x → +∞. -/
theorem Rudin_exercise_5_5 (f : ℝ → ℝ)
  (hfd : DifferentiableOn ℝ f (Set.Ioi 0))
  (hder : Tendsto (deriv f) Filter.atTop (nhds 0)) :
  Tendsto (fun x => f (x + 1) - f x) Filter.atTop (nhds 0) := by sorry
