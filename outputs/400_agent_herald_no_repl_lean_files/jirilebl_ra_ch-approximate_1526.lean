import Mathlib

open Complex

theorem power_series_zero_on_sequence_implies_coeffs_zero {a : ℕ → ℂ} (r : ℝ)
  (hr : 0 < r)
  (hconv : ∀ z : ℂ, Complex.abs z < r → Summable fun k => a k * z ^ k)
  (zseq : ℕ → ℂ)
  (hz_nonzero : ∀ n, zseq n ≠ 0)
  (hz_lim : Tendsto zseq atTop (nhds (0 : ℂ)))
  (hz_vals : ∀ n, ∑' k, a k * (zseq n) ^ k = 0) :
  ∀ k, a k = 0 := by sorry
