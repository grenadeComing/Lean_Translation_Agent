import Mathlib

open Set

theorem jirilebl_ra_ch_several_vars_ders_4243 {n : ℕ} {U : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)
  (hfd : ContDiffOn ℝ (2 : WithTop ℕ∞) f U) (Uconv : Convex ℝ U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ,
      ‖h‖ < δ → x + h ∈ U →
      |f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * (iteratedFDeriv ℝ 2 f x) (fun _ => h)| ≤ ε * ‖h‖^2 := by sorry
