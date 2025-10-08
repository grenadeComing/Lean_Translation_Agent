import Mathlib

open Set

theorem exists_delta_punctured_open
  (U : Set ℂ) (hU : IsOpen U) (connectedU : Prop)
  (f : ℂ → ℂ)
  (HolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop)
  (NonconstantOn : (ℂ → ℂ) → Set ℂ → Prop)
  (hf : HolomorphicOn f U) (hnon : NonconstantOn f U)
  (p : ℂ) (hp : p ∈ U) :
  ∃ δ : ℝ, δ > 0 ∧ ∀ s : Set ℂ, s ⊆ ({ z | dist z p < δ } \ {p}) → IsOpen s → IsOpen (f '' s) := by sorry
