import Mathlib

/-- Suppose U ⊂ ℂ is open and connected, and suppose f : U → ℂ is holomorphic and nonconstant.
    Then f(U) is open. -/
theorem open_map_of_holomorphic_nonconstant {U : Set ℂ} (hU : IsOpen U) (hconn : IsConnected U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hne : ¬ IsConstantOn f U) :
  IsOpen (f '' U) := by sorry

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is differentiable on U. If f'(p) ≠ 0, then f is
    locally injective at p. -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ InjOn f V := by sorry
