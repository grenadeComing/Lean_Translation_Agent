import Mathlib

-- Suppose f is holomorphic on a neighborhood of the closed disk overline{D}(0,1)
-- and f(0) ≠ 0. Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
-- |1 - ∑_{k=0}^m (f^{(k)}(0)/(k! f(0))) z^k| ≤ C |z|^{m+1}.
-- We express this using a power series `a : ℕ → Complex` with radius > 1 giving `f` on the unit disk,
-- `a 0 = f 0` and `f 0 ≠ 0`.

theorem jirilebl_ca_ca_12556 (a : ℕ → Complex) (f : Complex → Complex) (R : ℝ)
  (hR : 1 < R)
  (h_coeff : ∃ M : ℝ, 0 ≤ M ∧ ∀ n, Complex.abs (a n) ≤ M * (R⁻¹ : ℝ) ^ n)
  (h_series : ∀ z, Complex.abs z ≤ 1 → HasSum (fun n => a n * z ^ n) (f z))
  (h_a0 : a 0 = f 0) (h_f0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : Complex, Complex.abs z ≤ 1 →
    Complex.abs (1 - Finset.sum (Finset.range (m + 1)) fun k => (a k / a 0) * z ^ k) ≤ C * (Complex.abs z) ^ (m + 1)

:= by sorry
