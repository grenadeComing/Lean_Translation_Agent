import Mathlib

theorem jirilebl_ca_ca_5367 (U : Set ℂ) (p : ℂ) (hU : IsOpen U) (hp : p ∈ U)
  (f : ℂ → ℂ) (f' : ℂ) (hf : HasDerivAt f f' p) (hder : f' ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ ∀ x y, x ∈ V → y ∈ V → f x = f y → x = y := by
  sorry
