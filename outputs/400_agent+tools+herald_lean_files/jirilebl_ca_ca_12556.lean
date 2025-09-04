import Mathlib

open Complex

/-- Suppose `f` is holomorphic on a neighborhood of the closed unit disk and `f 0 ≠ 0`.
We express the analyticity assumption by giving the Taylor coefficients `a : ℕ → ℂ` and
assuming the power series ∑' a n z^n converges to `f z` for |z| ≤ 1.

Then there exists `C : ℝ` such that for all `m : ℕ` and `|z| ≤ 1` we have

  |1 - ∑_{k=0}^m (a k / f 0) z^k| ≤ C * |z|^(m+1).

This file only states the result; the proof is omitted. -/
theorem jirilebl_ca_ca_12556 {f : ℂ → ℂ} (a : ℕ → ℂ)
  (h_series : ∀ z, Complex.abs z ≤ 1 → (∑' n, a n * z ^ n) = f z)
  (h_a0 : a 0 = f 0) (f0_ne : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ (m : ℕ) (z : ℂ), Complex.abs z ≤ 1 →
    Complex.abs (1 - Finset.sum (Finset.range (m + 1)) fun k => (a k / f 0) * z ^ k)
      ≤ C * (Complex.abs z) ^ (m + 1) := by sorry
