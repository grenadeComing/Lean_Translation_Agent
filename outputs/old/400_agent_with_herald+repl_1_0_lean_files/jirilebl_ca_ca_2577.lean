import Mathlib

open Set Metric

/-- If |f| attains a local maximum at z0 and f is holomorphic on an open set U,
then f is constant in a neighborhood of z0. -/
theorem max_modulus_principle_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, ∀ z ∈ U ∩ ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ r' > 0, ∀ z ∈ U ∩ ball z0 r', f z = f z0 := by sorry
