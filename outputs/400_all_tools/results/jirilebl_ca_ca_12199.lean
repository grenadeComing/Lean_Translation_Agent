import Mathlib

open Complex

/-- Suppose U ⊂ ℂ is open and connected, and suppose f : U → ℂ is holomorphic and nonconstant.
Then f(U) is open. -/
theorem open_mapping_of_holomorphic_nonconstant {U : Set ℂ} (hU : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) (hf_nonconst : ¬ ∃ c : ℂ, ∀ x ∈ U, f x = c) :
  IsOpen (f '' U) := by sorry

/-- Local injectivity where derivative is nonzero. -/
theorem local_injective_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ (∀ x y, x ∈ V ∩ U → y ∈ V ∩ U → f x = f y → x = y) := by sorry
