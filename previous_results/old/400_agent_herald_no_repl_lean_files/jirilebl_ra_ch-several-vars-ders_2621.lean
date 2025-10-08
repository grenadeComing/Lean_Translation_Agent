import Mathlib

open Topology
open Asymptotics

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Suppose f : E → ℝ is differentiable at x0. Then the remainder
    f(x0 + h) - f(x0) - f' h is bounded by ‖f'‖ ‖h‖ plus a little-o(‖h‖).
    This formalizes the statement
    |f(x0+h) - f(x0) - Df(x0) h| ≤ ‖Df(x0)‖ ‖h‖ + o(‖h‖) as h → 0. -/
lemma has_fderiv_at_remainder_bound_operator_norm {f : E → ℝ} {x0 : E} {f' : E →L[ℝ] ℝ}
  (h : HasFderivAt f f' x0) :
  ∃ φ : E → ℝ, is_o φ (fun h => ‖h‖) (𝓝 (0 : E)) ∧
    ∀ h, |f (x0 + h) - f x0 - f' h| ≤ ‖f'‖ * ‖h‖ + |φ h| := by sorry
