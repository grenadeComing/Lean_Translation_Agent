import Mathlib

theorem power_series_coeffs_eq_zero_of_zeros_accum_at_zero
  {a : ℕ → ℂ} {f : ℂ → ℂ} :
  (∃ r : ℝ, 0 < r ∧ ∀ z : ℂ, ‖z‖ < r → HasSum (fun k => a k * z ^ k) (f z)) →
  (∃ (z : ℕ → ℂ), (∀ n, z n ≠ 0) ∧ Filter.Tendsto z Filter.atTop (nhds (0 : ℂ)) ∧ ∀ n, f (z n) = 0) →
  ∀ k, a k = 0 := by
  sorry
