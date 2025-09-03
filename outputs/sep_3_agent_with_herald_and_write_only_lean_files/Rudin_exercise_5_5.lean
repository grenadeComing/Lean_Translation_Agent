import Mathlib

open Filter

/--
Suppose f is defined and differentiable for every x>0, and f' x → 0 as x → +∞.
Put g(x) = f(x+1) - f(x). Then g(x) → 0 as x → +∞.
-/
theorem Rudin_exercise_5_5 {f : ℝ → ℝ}
  (h_diff : ∀ x, 0 < x → DifferentiableAt ℝ f x)
  (h_deriv_lim : Tendsto (fun x => deriv f x) atTop (𝓝 0)) :
  Tendsto (fun x => f (x + 1) - f x) atTop (𝓝 0) := by
  sorry
