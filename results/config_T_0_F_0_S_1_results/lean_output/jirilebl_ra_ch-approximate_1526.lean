import Mathlib

open Filter

theorem power_series_coeffs_zero_of_zeros_accumulating_at_zero {a : ℕ → ℂ} :
  (∃ r : ℝ, 0 < r ∧ ∀ z : ℂ, Complex.abs z < r → Summable fun k => a k * z ^ k) →
  (∃ z : ℕ → ℂ, (∀ n, z n ≠ 0) ∧ Tendsto z atTop (𝓝 (0 : ℂ)) ∧ ∀ n, ∑' k, a k * (z n) ^ k = 0) →
  ∀ k, a k = 0 := by sorry
