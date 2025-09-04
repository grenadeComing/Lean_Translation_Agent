import Mathlib

open Complex Finset Set BigOperators

/--
Suppose `f` is holomorphic on a neighborhood of the closed unit disk and `f 0 ≠ 0`.
Then there exists a constant `C` such that for all `m : ℕ` and `|z| ≤ 1`,

  |1 - ∑_{k=0}^m f^{(k)}(0)/(k! * f(0)) * z^k| ≤ C * |z|^(m+1).

We state this assuming a power series `p` for `f` at `0`: `HasFPowerSeriesAt f p 0`.
-/
theorem jirilebl_ca_ca_12556 (f : ℂ → ℂ) (p : FormalMultilinearSeries ℂ ℂ ℂ) (R : ℝ) (hR : 1 < R)
  (h_analytic : AnalyticOn ℂ f (ball (0 : ℂ) R)) (h_has : HasFPowerSeriesAt f p 0) (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ (m : ℕ) (z : ℂ), abs z ≤ 1 →
    abs (1 - Finset.sum (Finset.range (m + 1)) fun k => (p.coeff k / (f 0 : ℂ)) * z ^ k)
      ≤ C * (abs z) ^ (m + 1) := by
  sorry
