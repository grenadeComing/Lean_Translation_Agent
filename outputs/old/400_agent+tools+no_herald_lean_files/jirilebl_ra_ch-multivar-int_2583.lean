import Mathlib

open Set

variable {n : ℕ} (R : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)

variable (Riemann_integrable_on : (((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop))
variable (integral_on : (((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ))
variable (outer_measure_zero : Set (Fin n → ℝ) → Prop)

theorem jirilebl_ra_ch_multivar_int_2583
  (h_int : Riemann_integrable_on f R)
  (hf_nonneg : ∀ x ∈ R, 0 ≤ f x)
  (h_integral_zero : integral_on f R = 0) :
  ∃ E : Set (Fin n → ℝ), outer_measure_zero E ∧ ∀ x ∈ R \ E, f x = 0 := by sorry
