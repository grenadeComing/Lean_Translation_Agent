import Mathlib

/- Simple statement: differentiable at x0 implies error ≤ (∥f'∥+ε)‖h‖ for small h.
   We end with `:= by sorry` as requested. -/

theorem differentiable_at_error_bound {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {f : E → ℝ} {x0 : E} {f' : E →L[ℝ] ℝ} (hf : HasFDerivAt f f' x0) :
  ∀ (ε : ℝ) (hε : 0 < ε), ∃ (δ : ℝ) (hδ : 0 < δ), ∀ (h : E), ‖h‖ < δ → |f (x0 + h) - f x0 - f' h| ≤ (∥f'∥ + ε) * ‖h‖ := by
  sorry
