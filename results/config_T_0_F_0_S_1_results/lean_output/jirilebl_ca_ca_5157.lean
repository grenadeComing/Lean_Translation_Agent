import Mathlib

open Set

theorem jirilebl_ca_ca_5157_integral_param_holomorphic
  {U : Set ℂ} (hU : IsOpen U)
  (ψ : ℂ × ℝ → ℂ)
  (hψ_cont : ContinuousOn ψ (U ×ˢ (Icc (0 : ℝ) (1 : ℝ))))
  (hψ_hol : ∀ t ∈ Icc (0 : ℝ) (1 : ℝ), IsHolomorphicOn (fun z => ψ (z, t)) U) :
  IsHolomorphicOn (fun z => ∫ t in (0 : ℝ) .. (1 : ℝ), ψ (z, t)) U := by sorry
