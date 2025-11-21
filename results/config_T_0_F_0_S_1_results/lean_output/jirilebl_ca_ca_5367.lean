import Mathlib

/-!
Suppose U ⊆ ℂ is open, p ∈ U, and f : ℂ → ℂ is holomorphic on U with f'(p) ≠ 0.
Then there is an open neighborhood V of p such that f is injective on V.
This is stated below (proof omitted).
-/

theorem holomorphic_on.exists_open_neighborhood_injective_of_deriv_ne_zero {U : Set ℂ}
  (hU : IsOpen U) {p : ℂ} (hp : p ∈ U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U)
  (hfp : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ InjectiveOn f V := by sorry