import Mathlib

open MeasureTheory Set

/-- Rademacher's theorem for functions on R^n: if f is Lipschitz on a convex set U, then f is
    differentiable almost everywhere on U (w.r.t. Lebesgue/volume measure). -/
lemma jirilebl_ra_ch_several_vars_ders_3294 {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {L : ℝ}
  (hU : Convex ℝ U) (hL : LipschitzOnWith L f U) :
  ∀ᵐ x ∂(volume.restrict U), DifferentiableAt ℝ f x := by sorry
