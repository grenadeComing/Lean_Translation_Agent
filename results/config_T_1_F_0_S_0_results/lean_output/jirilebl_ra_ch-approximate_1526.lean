import Mathlib

/-- Suppose f(z) = ∑_{k=0}^∞ a_k z^k is a power series convergent in a neighbourhood of 0.
    Let (z_n) be a sequence of nonzero complex numbers converging to 0 such that f(z_n) = 0 for all n.
    Then every coefficient a_k is 0. -/
theorem power_series_coeffs_zero_of_zeros {a : ℕ → Complex} (r : ℝ) (hr : 0 < r)
  (hconv : ∀ z : Complex, Complex.abs z < r → Summable fun k => a k * z ^ k)
  (z : ℕ → Complex) (hz_ne : ∀ n, z n ≠ 0) (hz_lim : Tendsto z atTop (𝓝 (0 : Complex)))
  (hz_in : ∀ n, Complex.abs (z n) < r) (hz_zero : ∀ n, tsum (fun k => a k * (z n) ^ k) = 0) :
  ∀ k, a k = 0 := by sorry