import Mathlib

open Set Complex

lemma jirilebl_ca_ca_5157 {U : Set ℂ} (hU : IsOpen U)
  {ψ : ℂ × ℝ → ℂ}
  (hcont : ContinuousOn ψ (U ×ˢ (Icc (0:ℝ) 1)))
  (hhol : ∀ t ∈ (Icc (0:ℝ) 1), holomorphic_on (fun z => ψ (z, t)) U) :
  holomorphic_on (fun z => IntervalIntegral.integral (0 : ℝ) 1 fun t => ψ (z, t)) U := by sorry
