import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open, and ψ : U × [0,1] → ℂ is continuous such that for each fixed t ∈ [0,1], the function z ↦ ψ(z,t) is holomorphic. Then h(z) = ∫_0^1 ψ(z,t) dt is holomorphic on U. -/
theorem analytic_on_integral_param {U : Set Complex}
  (hU : IsOpen U)
  {ψ : Complex × ℝ → Complex}
  (hψ : ContinuousOn ψ (U ×ˢ Icc (0 : ℝ) 1))
  (hhol : ∀ t ∈ Icc (0 : ℝ) 1, AnalyticOn ℂ (fun z => ψ (z, t)) U) :
  AnalyticOn ℂ (fun z => ∫ t in 0..1, ψ (z, t)) U := by sorry