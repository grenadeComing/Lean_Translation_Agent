import Mathlib

open Complex Metric

theorem holomorphic_implies_analytic {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) :
  ∀ z0 ∈ U,
    ∃ (R : ℝ) (hRpos : 0 < R)
      (hRmax : ∀ r, r > R → ∃ w, w ∉ U ∧ dist w z0 < r),
      ∃ (a : ℕ → ℂ),
        ∀ z, dist z z0 < R →
          HasSum (fun n => a n * (z - z0) ^ n) (f z) := by sorry
