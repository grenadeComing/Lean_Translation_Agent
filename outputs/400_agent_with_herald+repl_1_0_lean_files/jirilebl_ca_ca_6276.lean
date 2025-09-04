import Mathlib

open Set

variable {U : Set ℂ} {f : ℂ → ℂ} {p f' : ℂ}
variable (IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop) (HasComplexDerivAt : (ℂ → ℂ) → ℂ → ℂ → Prop)

theorem holomorphic_local_injective_open_image (hU : IsOpen U) (hp : p ∈ U)
  (hf : IsHolomorphicOn f U) (hder : HasComplexDerivAt f f' p) (hf' : f' ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ IsOpen (f '' V) ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by
  sorry
