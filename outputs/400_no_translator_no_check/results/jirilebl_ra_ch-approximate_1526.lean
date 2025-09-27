import Mathlib

open Filter Complex

theorem jirilebl_ra_ch_approximate_1526
  (a : ℕ → Complex) :
  (∃ r : ℝ, 0 < r ∧ ∀ z : Complex, Complex.abs z < r → Summable (fun k => a k * z^k)) →
  ∀ (zseq : ℕ → Complex), (∀ n, zseq n ≠ 0) →
    Filter.Tendsto zseq Filter.atTop (nhds (0 : Complex)) →
    (∀ n, tsum (fun k => a k * (zseq n)^k) = 0) →
    ∀ k, a k = 0 := by sorry
