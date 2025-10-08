import Mathlib

open Set

variable {n : ℕ}
variable {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}

/-- If f is C^2 on a convex set U then it has a second order Taylor expansion on U.
    This encapsulates the statement that
    f(x + h) = f(x) + ∇f(x) · h + 1/2 hᵀ (H_f(x)) h + o(∥h∥^2)
    uniformly on compact subsets of U. -/
theorem jirilebl_ra_ch_several_vars_ders_4243 (hU : Convex ℝ U) (h : ContDiffOn ℝ 2 f U) :
  ∃ p : (Fin n → ℝ) → FormalMultilinearSeries ℝ (Fin n → ℝ) ℝ, HasFTaylorSeriesUpToOn 2 f p U := by
  sorry
