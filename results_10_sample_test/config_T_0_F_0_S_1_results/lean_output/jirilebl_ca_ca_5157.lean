import Mathlib

/-!
Suppose U ⊂ ℂ is open, and ψ : U × [0,1] → ℂ is a continuous function such that for each fixed t ∈ [0,1],
the function z ↦ ψ(z,t) is holomorphic. Then h(z) = ∫_0^1 ψ(z,t) dt is a holomorphic function on U.
-/

open Set

theorem is_holomorphic_of_integral_of_holomorphic_family
  {U : Set ℂ} (psi : ℂ × ℝ → ℂ)
  (U_open : IsOpen U)
  (psi_cont : ContinuousOn psi (U ×ˢ (Icc (0 : ℝ) 1)))
  (psi_holo : ∀ t ∈ Icc (0 : ℝ) 1, IsHolomorphicOn (fun z => psi (z, t)) U) :
  IsHolomorphicOn (fun z => ∫ t in (0 : ℝ)..1, psi (z, t)) U := by sorry
