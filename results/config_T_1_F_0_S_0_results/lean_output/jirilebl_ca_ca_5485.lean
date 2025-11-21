import Mathlib

/-!
Suppose f : 𝔻 → 𝔻 is holomorphic and f(0) = 0, then |f'(0)| ≤ 1.
We state this for a function f : ℂ → ℂ which is differentiable on the open unit ball
and maps the open unit ball into itself.
-/

theorem abs_deriv_le_one_of_maps_to_unit_disk {f : ℂ → ℂ}
  (h_diff : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (h_map : ∀ z, Complex.abs z < 1 → Complex.abs (f z) < 1)
  (h0 : f 0 = 0) :
  Complex.abs (deriv f 0) ≤ 1 := by sorry