import Mathlib

open Complex
open Finset

theorem jirilebl_ca_ca_12556 (f : ℂ → ℂ) (c : ℕ → ℂ) (R A : ℝ)
  (hR : 1 < R)
  (hc_bound : ∀ k, Complex.abs (c k) ≤ A / (R ^ k))
  (hcoeff : ∀ z, Complex.abs z ≤ 1 → f z = tsum fun k => c k * z ^ k)
  (hc0 : c 0 = f 0)
  (hf0_nonzero : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ (m : ℕ) (z : ℂ), Complex.abs z ≤ 1 →
    Complex.abs (1 - Finset.sum (Finset.range (m + 1)) fun k => (c k / c 0) * z ^ k) ≤ C * (Complex.abs z) ^ (m + 1) := by
  sorry
