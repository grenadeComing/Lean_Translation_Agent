import Mathlib

open Set

theorem jirilebl_ca_ca_5157 (U : Set ℂ) (hU : IsOpen U)
  (psi : ℂ → ℝ → ℂ)
  (h_cont : ContinuousOn (fun p : ℂ × ℝ => psi p.1 p.2) (U ×ˢ (Icc (0 : ℝ) 1)))
  (h_diff : ∀ t ∈ Icc (0 : ℝ) 1, DifferentiableOn ℂ (fun z => psi z t) U) :
  DifferentiableOn ℂ (fun z => ∫ t in 0..1, psi z t) U := by sorry
