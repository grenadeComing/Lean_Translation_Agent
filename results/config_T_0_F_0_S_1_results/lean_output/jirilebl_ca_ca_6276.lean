import Mathlib

/-
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective.
-/

lemma exists_open_neighborhood_image_open_and_injective_of_holomorphic_on_deriv_ne_zero
  {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ) (hf : HolomorphicOn f U) {p : ℂ} (hp : p ∈ U)
  (h : deriv f p ≠ 0) :
  ∃ (V : Set ℂ), p ∈ V ∧ IsOpen V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry