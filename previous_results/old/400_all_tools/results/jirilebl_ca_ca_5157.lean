import Mathlib
open Set Filter Metric Complex MeasureTheory
open scoped Topology

/-- Suppose U ⊂ ℂ is open, ψ : ℂ × ℝ → ℂ continuous on U × [0,1], and for each t in [0,1], z ↦ ψ(z,t) is DifferentiableOn ℂ on U. Then the function z ↦ ∫_{0}^{1} ψ(z,t) dt is DifferentiableOn ℂ on U. -/
theorem differentiableOn_complex_integral {U : Set ℂ} (hU : IsOpen U) (ψ : ℂ × ℝ → ℂ)
    (hψ : ContinuousOn ψ (U ×ˢ (Set.Icc (0 : ℝ) 1))) (hψ' : ∀ t ∈ Set.Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z => ψ (z, t)) U) :
    DifferentiableOn ℂ (fun z => MeasureTheory.integral (Measure.restrict MeasureTheory.MeasureSpace.volume (Set.Icc (0 : ℝ) 1)) (fun t => ψ (z, t))) U := by sorry
