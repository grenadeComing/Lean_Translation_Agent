import Mathlib

/--
If f : ℂ → ℂ is holomorphic on a domain U ⊆ ℂ, then f is analytic on a disk about z0
with radius R equal to the distance to the nearest singularity. This is a placeholder form.
-/
theorem holomorphic_imp_analytic_on
  (f : ℂ → ℂ) {U : Set ℂ} (hU : IsOpen U)
  (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (R : ℝ) (hR : 0 < R)
  : AnalyticOn ℂ f (ball z0 R) := by
  sorry
