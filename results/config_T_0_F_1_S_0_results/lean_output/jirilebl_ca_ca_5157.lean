import Mathlib

open Set
open MeasureTheory

theorem integral_of_holomorphic_family
  (U : Set Complex) (hU : IsOpen U)
  (ψ : Complex → ℝ → Complex)
  (hψ_cont : ContinuousOn (fun p : Complex × ℝ => ψ p.1 p.2) (U.prod (Icc (0 : ℝ) 1)))
  (hψ_hol : ∀ t, t ∈ (Icc (0 : ℝ) 1) → DifferentiableOn ℂ (fun z => ψ z t) U) :
  DifferentiableOn ℂ (fun z => intervalIntegral (fun t => ψ z t) 0 1) U := by sorry
