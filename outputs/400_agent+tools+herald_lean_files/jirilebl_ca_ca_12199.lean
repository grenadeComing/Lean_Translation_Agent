import Mathlib

/-!
Suppose U ⊂ ℂ is open and connected, and suppose f : U → ℂ is holomorphic and nonconstant.
Then f(U) is open, and f is locally injective at all points where f'(p) ≠ 0.

We state this using DifferentiableOn (holomorphic on an open set) and HasDerivAt for the
complex derivative. Proofs are omitted (sorry).
-/

open Set

theorem open_mapping_holomorphic {U : Set ℂ} (hU : IsOpen U) (hconn : IsConnected U)
  {f : ℂ → ℂ} (hd : DifferentiableOn ℂ f U) (hnonconst : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) :
  IsOpen (f '' U) := by sorry

theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hd : DifferentiableOn ℂ f U)
  (hder : ∃ f', HasDerivAt f f' p ∧ f' ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
