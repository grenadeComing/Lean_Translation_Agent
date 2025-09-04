import Mathlib
open Complex

/-- If f : U -> C is holomorphic on a domain U ⊂ C, then f is analytic.
    More precisely: if U is open and f is differentiable on U, then f is analytic at every z0 ∈ U. -/
theorem holomorphic_on_analytic (U : Set ℂ) {f : ℂ → ℂ} (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (z0 : ℂ) (hz0 : z0 ∈ U) :
  AnalyticAt ℂ f z0 := by sorry