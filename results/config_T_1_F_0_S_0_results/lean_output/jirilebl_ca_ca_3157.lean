import Mathlib

open Metric Set

/-- If f : U → ℂ is holomorphic on a domain U ⊂ ℂ, then f is analytic. That is, given z0 ∈ U,
f has a Taylor series, and it converges in the disk { z : |z - z0| < R }, where R is the distance
to the nearest singularity (possibly R = ∞). Furthermore, the sum of the series is f. -/
theorem holomorphic_on_analytic {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : IsHolomorphicOn f U)
  (z0 : ℂ) (hz0 : z0 ∈ U) :
  ∃ (R : ℝ) (hR : 0 < R) (a : ℕ → ℂ),
    R = Inf ((fun w => dist z0 w) '' (ℂ \ U)) ∧
    ∀ z, dist z z0 < R → HasSum (fun n => a n * (z - z0) ^ n) (f z) := by sorry