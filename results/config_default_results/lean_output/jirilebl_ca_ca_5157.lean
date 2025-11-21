import Mathlib
open Set Filter Metric Complex MeasureTheory
open scoped Topology

/-- Suppose U ⊂ ℂ is open, and ψ : U × [0,1] → ℂ is continuous and for each fixed t ∈ [0,1], z ↦ ψ(z,t) is holomorphic on U. Then h(z) = ∫_0^1 ψ(z,t) dt is holomorphic on U. -/
theorem differentiableOn_integral_param {U : Set ℂ} (hU : IsOpen U) (ψ : ℂ × ℝ → ℂ)
  (hψ_cont : ContinuousOn ψ (U ×ˢ Icc (0 : ℝ) 1))
  (hψ_hol : ∀ t ∈ Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z => ψ (z, t)) U) :
  DifferentiableOn ℂ (fun z => MeasureTheory.integral (MeasureTheory.volume.restrict (Icc (0 : ℝ) 1)) (fun t => ψ (z, t))) U := by sorry
