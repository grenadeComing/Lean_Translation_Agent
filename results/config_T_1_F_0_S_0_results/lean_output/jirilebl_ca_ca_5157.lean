import Mathlib

open Set

/-- Suppose U ⊆ ℂ is open, and ψ : U × [0,1] → ℂ is a continuous function such that for each fixed t ∈ [0,1], the function z ↦ ψ(z,t) is holomorphic on U. Then h(z) = ∫_0^1 ψ(z,t) dt is holomorphic on U. -/
theorem holomorphic_on_integral_of_continuous {U : Set ℂ} (hU : IsOpen U)
  (ψ : ℂ × ℝ → ℂ)
  (hψ : ContinuousOn ψ (U ×ˢ Icc (0 : ℝ) 1))
  (holo : ∀ t ∈ Icc (0 : ℝ) 1, HolomorphicOn (fun z => ψ (z, t)) U) :
  HolomorphicOn (fun z => ∫ t in 0..1, ψ (z, t)) U := by sorry
