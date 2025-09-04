import Mathlib

open Set

theorem complex_local_injective_of_nonzero_derivative {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ} {f' : ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hder : HasDerivAt f f' p) (hneq : f' ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
