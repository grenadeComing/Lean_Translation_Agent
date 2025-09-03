import Mathlib

/-- Rudin, Exercise 5.5.
Suppose f is defined and differentiable for every x > 0, and f' (the derivative) tends to 0 as x → +∞.
Put g(x) = f(x+1) - f(x). Then g(x) → 0 as x → +∞. -/
theorem Rudin_exercise_5_5 {f : ℝ → ℝ}
  (h_diff : ∀ x, 0 < x → DifferentiableAt ℝ f x)
  (h_deriv : Filter.Tendsto (fun x => deriv f x) Filter.atTop (nhds 0)) :
  Filter.Tendsto (fun x => f (x + 1) - f x) Filter.atTop (nhds 0) := by sorry
