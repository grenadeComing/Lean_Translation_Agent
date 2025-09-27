import Mathlib

/-- Identity theorem for holomorphic functions: if two holomorphic functions on an open set
    agree on a set with an accumulation point in the open set, then they are equal on the whole open set.

    We keep `IsHolomorphicOn` as an explicit parameter to avoid depending on a specific Mathlib name. -/
theorem holomorphic_identity (IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop)
  {U : Set ℂ} (hU : IsOpen U) {f g : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) (hg : IsHolomorphicOn g U)
  {S : Set ℂ} (hS : S ⊆ U)
  {z0 : ℂ} (hz0 : z0 ∈ U) (hacc : z0 ∈ closure (S \ {z0}))
  (heq : ∀ z ∈ S, f z = g z) :
  ∀ z ∈ U, f z = g z := by sorry
