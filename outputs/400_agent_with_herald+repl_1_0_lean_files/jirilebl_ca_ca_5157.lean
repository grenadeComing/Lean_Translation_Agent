import Mathlib

/-- If psi is continuous on U × I and holomorphic in z for each t, then the integral in t is holomorphic in z. -/
theorem integral_of_holomorphic_in_parameter {U : Set ℂ} (hU : IsOpen U)
  (psi : ℂ × ℝ → ℂ)
  (hpsi_cont : ContinuousOn psi (Set.prod U (Set.Icc (0 : ℝ) 1)))
  (hpsi_holo : ∀ t ∈ Set.Icc (0 : ℝ) 1, HolomorphicOn (fun z => psi (z, t)) U) :
  HolomorphicOn (fun z => intervalIntegral.integral (fun t => psi (z, t)) (0 : ℝ) 1) U := by
  sorry
