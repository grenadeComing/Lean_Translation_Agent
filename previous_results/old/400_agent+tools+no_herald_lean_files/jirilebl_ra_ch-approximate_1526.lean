import Mathlib

open Complex

theorem power_series_with_accumulation_root_all_coeff_zero {a : ℕ → ℂ}
  (r : ℝ) (hr : r > 0) (hconv : ∀ z : ℂ, Complex.abs z < r → Summable fun k => a k * z ^ k)
  (z : ℕ → ℂ) (hz_nonzero : ∀ n, z n ≠ 0)
  (hz_lim : Filter.Tendsto z Filter.atTop (nhds (0 : ℂ)))
  (hz_root : ∀ n, (∑' k, a k * (z n) ^ k) = 0) :
  ∀ k, a k = 0 := by sorry
