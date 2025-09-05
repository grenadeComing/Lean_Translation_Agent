import Mathlib

/-!
Open mapping theorem for holomorphic functions and local injectivity where the derivative
is nonzero. This is a translation of:

Suppose U ⊂ ℂ is open and connected, and f : U → ℂ is holomorphic and nonconstant.
Then f(U) is open, and f is locally injective at all points where f'(p) ≠ 0.
-/

theorem holomorphic_open_map_and_local_injective {U : Set ℂ} (hU : IsOpen U)
  (hconn : IsConnected U) {f : ℂ → ℂ} (hf : holomorphic_on f U)
  (hnonconst : ∃ x y, x ∈ U ∧ y ∈ U ∧ f x ≠ f y) :
  IsOpen (f '' U) ∧ ∀ p ∈ U, (deriv f p ≠ 0) → ∃ V, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ Set.InjOn f V := by sorry
