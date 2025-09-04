import Mathlib

/-- Suppose U ⊂ ℂ is open, p ∈ U, and f : U → ℂ is holomorphic, and f'(p) ≠ 0.
Then there is an open neighborhood V of p such that f restricted to V is injective. -/
theorem holomorphic_local_injective
  {IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop}
  {deriv : (ℂ → ℂ) → ℂ → ℂ}
  {U : Set ℂ} {p : ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hhol : IsHolomorphicOn f U) (hder : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ Function.Injective (fun z => f z) := by sorry
