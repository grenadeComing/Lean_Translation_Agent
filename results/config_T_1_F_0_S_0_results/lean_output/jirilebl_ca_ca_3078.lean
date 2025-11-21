import Mathlib

open Complex Set Metric

/-- If f : U → ℂ is a holomorphic function on a domain U ⊆ ℂ, then f is analytic.
    That is, given z0 ∈ U, f has a Taylor series, and it converges in the disk
    { z : |z - z0| < R }, where R is the distance to the nearest singularity
    (possibly R = ∞). Furthermore, the sum of the series is f. -/
theorem holomorphic_on_is_analytic {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : HolomorphicOn f U) :
  ∀ z0 ∈ U, ∃ R : ℝ, 0 < R ∧ ball z0 R ⊆ U ∧
    ∃ a : ℕ → ℂ, ∀ z ∈ ball z0 R, HasSum (fun n => a n * (z - z0) ^ n) (f z) := by sorry
