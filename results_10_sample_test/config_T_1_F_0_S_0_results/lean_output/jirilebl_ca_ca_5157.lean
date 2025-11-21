import Mathlib

open Set
open scoped Topology

/-- Suppose U ⊂ ℂ is open, and ψ : ℂ × ℝ → ℂ is continuous on U ×ˢ Icc (0 : ℝ) 1, and for each t ∈ Icc (0 : ℝ) 1 the function z ↦ ψ (z, t) is holomorphic on U. Then h(z) = ∫_0^1 ψ(z,t) dt is holomorphic on U. -/
theorem holomorphic_integral {U : Set ℂ} (hU : IsOpen U) {ψ : ℂ × ℝ → ℂ}
  (hcont : ContinuousOn ψ (U ×ˢ Icc (0 : ℝ) 1))
  (holo_at : ∀ t ∈ Icc (0 : ℝ) 1, IsHolomorphicOn (fun z => ψ (z, t)) U) :
  IsHolomorphicOn (fun z => ∫ t in 0 .. 1, ψ (z, t)) U := by sorry
