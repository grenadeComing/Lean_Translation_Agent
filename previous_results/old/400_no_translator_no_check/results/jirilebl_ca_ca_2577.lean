import Mathlib

open Set Metric

/-- Maximum modulus principle (local version): if |f| attains a local maximum at z0 and f is
    analytic on an open set U, then f is constant in a neighbourhood of z0. -/
theorem maximum_modulus_principle_local {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U)
  (hmax : ∃ r : ℝ, 0 < r ∧ ball z0 r ⊆ U ∧ ∀ z ∈ ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ r' : ℝ, 0 < r' ∧ ball z0 r' ⊆ U ∧ ∀ z ∈ ball z0 r', f z = f z0 := by sorry
