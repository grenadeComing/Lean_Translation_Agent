import Mathlib

open Set

theorem jirilebl_ca_ca_5157 (U : Set ℂ) (hU : IsOpen U)
  (psi : ℂ × ℝ → ℂ)
  (hcont : ContinuousOn psi (U.prod (Icc (0 : ℝ) 1)))
  (hhol : ∀ t ∈ Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z : ℂ => psi (z, t)) U) :
  DifferentiableOn ℂ (fun z : ℂ => MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.volume (Icc (0 : ℝ) 1)) (fun t => psi (z, t))) U := by sorry