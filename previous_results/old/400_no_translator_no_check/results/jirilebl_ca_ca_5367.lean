import Mathlib

open Set

theorem holomorphic_local_injective {U : Set ℂ} {p : ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hfd : DifferentiableOn ℂ f U) (hder : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ ∀ x y, x ∈ V → y ∈ V → f x = f y → x = y := by sorry
