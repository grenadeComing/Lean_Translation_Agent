import Mathlib

/-
Suppose f is defined and differentiable for every x > 0, and f' (x) -> 0 as x -> +oo.
Put g(x) = f(x+1) - f(x). Prove g(x) -> 0 as x -> +oo.
-/

open Filter
open Set

variable {f : ℝ → ℝ}

theorem Rudin_exercise_5_5
  (hf : DifferentiableOn ℝ f (Ioi 0))
  (hfd : Tendsto (fun x => deriv f x) atTop (nhds 0)) :
  Tendsto (fun x => f (x + 1) - f x) atTop (nhds 0) := by
  sorry
