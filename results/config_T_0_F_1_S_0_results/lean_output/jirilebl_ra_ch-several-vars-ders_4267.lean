import Mathlib

open Set

theorem jirilebl_ra_ch_several_vars_ders_4267
  {n : ℕ} (f : (Fin n → ℝ) → ℝ) {U : Set (Fin n → ℝ)}
  (hU : Convex ℝ U) (hC2 : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ > 0,
      ∀ x ∈ K, ∀ h : Fin n → ℝ, x + h ∈ U → ‖h‖ < δ →
        abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h) ≤ ε * ‖h‖ ^ 2 := by
  sorry