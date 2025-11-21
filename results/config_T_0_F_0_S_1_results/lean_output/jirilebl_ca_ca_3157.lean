import Mathlib

open Complex

/-- If f is holomorphic on an open set U, then f is analytic on U. -/
theorem holomorphic_on_analytic (U : Set ℂ) {f : ℂ → ℂ} (hU : IsOpen U) (hf : holomorphic_on f U) :
  analytic_on f U := by sorry

/-- More concretely: for each z0 in U there is a Taylor series with radius equal to the
distance to the complement of U (the nearest singularity), and the series sums to f on the
corresponding disk. -/
theorem holomorphic_on_exists_taylor_series (U : Set ℂ) {f : ℂ → ℂ} (hU : IsOpen U) (hf : holomorphic_on f U)
  {z0 : ℂ} (hz0 : z0 ∈ U) :
  ∃ (c : ℕ → ℂ) (R : ℝ), 0 < R ∧ (∀ z, abs (z - z0) < R → HasSum (fun n => c n * (z - z0) ^ n) (f z)) ∧
    R = dist z0 (compl U) := by sorry