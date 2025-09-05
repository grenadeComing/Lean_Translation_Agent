import Mathlib

open Set

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem holomorphic_on_injective_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : holomorphic_on f U) (hi : Injective f) : ∀ z ∈ U, deriv f z ≠ 0 := by sorry
