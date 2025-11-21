import Mathlib

/--
Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic. If p ∈ U and f'(p) ≠ 0,
then for sufficiently small δ > 0, f restricted to Δ_δ(p) is injective.
-/
theorem holomorphic_local_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) {p : ℂ} (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ δ : ℝ, 0 < δ ∧ Ball p δ ⊆ U ∧ InjOn f (Ball p δ) := by sorry
