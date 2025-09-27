import Mathlib

open Complex Set Metric

/-- Maximum modulus principle (local form): if a holomorphic function f has |f| attaining a local
maximum at z0, then f is constant in a neighborhood of z0.  -/
theorem maximum_modulus_local {U : Set ℂ} (f : ℂ → ℂ) (z0 : ℂ)
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, ∀ z ∈ U ∩ ball z0 r, Complex.abs (f z) ≤ Complex.abs (f z0)) :
  ∃ r > 0, ∀ z ∈ U ∩ ball z0 r, f z = f z0 := by sorry
