import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- A conservative formalization: if f has a Fréchet derivative at x0, then the error
    f(x0+h) - f(x0) - Df(x0) h is bounded by ‖Df(x0)‖‖h‖ plus a smaller-order term (here taken as ‖h‖^2).
    The proof is omitted. -/
theorem jirilebl_ra_ch_several_vars_ders_2621 (f : E → ℝ) {x0 : E}
  (hf : HasFDerivAt f (fderiv ℝ f x0) x0) :
  ∀ h, |f (x0 + h) - f x0 - (fderiv ℝ f x0 : E →L[ℝ] ℝ) h| ≤ ‖(fderiv ℝ f x0 : E →L[ℝ] ℝ)‖ * ‖h‖ + ‖h‖ ^ 2 := by
  sorry
