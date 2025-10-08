import Mathlib

open Filter Asymptotics

/-!
Lemma (informal): Suppose f : ℝ^n → ℝ is differentiable at x0. Then
|f(x0+h) - f(x0) - Df(x0) h| ≤ ‖Df(x0)‖ ‖h‖ + o(‖h‖) as h → 0.
This file gives a Lean statement of that inequality (ending with `by sorry`).
-/

lemma jirilebl_ra_ch_several_vars_ders_2621 {n : ℕ} (f : (Fin n → ℝ) → ℝ) (x0 : Fin n → ℝ) :
  DifferentiableAt ℝ f x0 →
  Asymptotics.IsLittleO (nhds (0 : Fin n → ℝ))
    (fun h => (|f (x0 + h) - f x0 - (fderiv ℝ f x0) h| - ‖(fderiv ℝ f x0)‖ * ‖h‖))
    (fun h => ‖h‖) := by sorry
