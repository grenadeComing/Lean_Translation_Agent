import Mathlib

open Set MeasureTheory

theorem integral_parametric_holomorphic (U : Set ℂ) (ψ : ℂ × ℝ → ℂ)
  (hU : IsOpen U)
  (hψ : ContinuousOn ψ (U ×ˢ (Set.Icc (0 : ℝ) 1)))
  (hhol : ∀ t ∈ Set.Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z => ψ (z, t)) U) :
  DifferentiableOn ℂ (fun z => MeasureTheory.integral (MeasureTheory.volume.restrict (Set.Icc (0 : ℝ) 1)) fun t => ψ (z, t)) U := by sorry
