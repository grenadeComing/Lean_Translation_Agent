import Mathlib

open Complex

theorem deriv_zero_has_finite_order (U : Set ℂ) (hU : IsOpen U) (f : ℂ → ℂ) (hf : AnalyticOn ℂ f U)
  {z0 : ℂ} (hz0 : z0 ∈ U) (hnonconst : ¬ ∀ z ∈ U, f z = f z0) (hder0 : deriv f z0 = 0) :
  ∃ (n : ℕ) (r : ℝ) (g : ℂ → ℂ),
    0 < r ∧ Metric.ball z0 r ⊆ U ∧ 0 < (n : ℕ) ∧ AnalyticOn ℂ g (Metric.ball z0 r) ∧ g z0 ≠ 0 ∧
    ∀ z ∈ Metric.ball z0 r, deriv f z = (z - z0) ^ n * g z := by sorry
