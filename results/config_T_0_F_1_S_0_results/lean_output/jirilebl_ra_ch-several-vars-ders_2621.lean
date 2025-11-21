import Mathlib

theorem jirilebl_ra_ch_several_vars_ders_2621 {n : ℕ} (f : (Fin n → ℝ) → ℝ) {x0 : Fin n → ℝ}
  (hdf : DifferentiableAt ℝ f x0) :
  ∃ (φ : (Fin n → ℝ) → ℝ),
    (∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ h : Fin n → ℝ, 0 < ‖h‖ → ‖h‖ < δ → |φ h| ≤ ε * ‖h‖) ∧
    ∀ h : Fin n → ℝ, |f (x0 + h) - f x0 - (fderiv ℝ f x0) h| ≤ ‖(fderiv ℝ f x0)‖ * ‖h‖ + |φ h| :=
  by sorry
