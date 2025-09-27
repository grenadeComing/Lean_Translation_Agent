import Mathlib

open Set
open Topology
open MeasureTheory
open Complex

variable {U : Set ℂ} (ψ : ℂ × ℝ → ℂ)

/-- Suppose U ⊆ ℂ is open, and ψ : U × [0,1] → ℂ is continuous and for each fixed t the map z ↦ ψ(z,t) is holomorphic on U.
    Then h(z) = ∫_0^1 ψ(z,t) dt is holomorphic on U. -/
theorem integral_of_holomorphic_is_holomorphic (U_open : IsOpen U)
  (ψ_cont : ContinuousOn (fun p : ℂ × ℝ => ψ p) (U ×ˢ (Icc (0 : ℝ) 1)))
  (holo_fiber : ∀ t ∈ Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z => ψ (z, t)) U) :
  DifferentiableOn ℂ (fun z => ∫ t in Icc (0 : ℝ) 1, ψ (z, t) ∂volume) U := by sorry