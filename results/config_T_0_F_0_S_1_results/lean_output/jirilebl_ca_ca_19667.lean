import Mathlib

open Complex Metric Set

/-- Maximum modulus principle (local version):
If `f` is holomorphic on an open set `U` and `|f|` attains a local maximum at `z0 ∈ U`,
then `f` is constant in a neighborhood of `z0`. -/
theorem maximum_modulus_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U)
  {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, ∀ z, z ∈ Metric.ball z0 r → |f z| ≤ |f z0|) :
  ∃ r' > 0, ∀ z, z ∈ Metric.ball z0 r' → f z = f z0 := by sorry
