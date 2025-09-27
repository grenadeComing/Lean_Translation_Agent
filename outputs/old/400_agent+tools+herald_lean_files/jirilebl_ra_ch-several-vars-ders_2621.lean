import Mathlib

/-- If f is Fréchet-differentiable at x0 with derivative `f' : E →L[ℝ] ℝ`, then the error
    f(x0+h) - f(x0) - f' h is bounded by the operator norm times ‖h‖ plus an arbitrarily
    small additive factor: for every ε>0 there is δ>0 such that
    |f(x0+h) - f(x0) - f' h| ≤ (‖f'‖ + ε) * ‖h‖ for all h with ‖h‖ < δ. -/

theorem frechet_deriv_error_bound {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {f : E → ℝ} {x0 : E} {f' : E →L[ℝ] ℝ} (hf : HasFDerivAt f f' x0) :
  ∀ ε > 0, ∃ δ > 0, ∀ h : E, ‖h‖ < δ → abs (f (x0 + h) - f x0 - f' h) ≤ (‖f'‖ + ε) * ‖h‖ := by
  sorry
