import Mathlib

/-!
Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective.
Show that f'(z) ≠ 0 for every z ∈ U.
-/

open Set

theorem holomorphic_injective_derivative_ne_zero {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : HolomorphicOn f U) (hfi : Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry