import Mathlib

open Filter

/-- Suppose f(z) = \sum_{k=0}^\infty a_k z^k is a convergent power series and {z_n} is a sequence of nonzero complex numbers converging to 0, such that f(z_n) = 0 for all n. Then all coefficients a_k are zero. -/
theorem power_series_zero_of_zeros (a : ℕ → ℂ) (f : ℂ → ℂ) (r : ℝ)
  (hr : 0 < r)
  (hf : ∀ (z : ℂ), norm z < r → HasSum (fun k => a k * z ^ k) (f z))
  (z : ℕ → ℂ)
  (hz : ∀ n, z n ≠ 0)
  (hz_tendsto : Filter.Tendsto z Filter.atTop (nhds (0 : ℂ)))
  (hzeros : ∀ n, f (z n) = 0) :
  ∀ k, a k = 0 := by sorry
