import Mathlib

open Set

variable {U : Set ℂ} {f : ℂ → ℂ}

/-- Open mapping theorem for holomorphic (complex-differentiable) nonconstant functions.
We state it using DifferentiableOn ℂ to mean holomorphic on U. -/
theorem open_map_of_differentiable_nonconstant (hU : IsOpen U) (hconn : IsConnected U)
  (hd : DifferentiableOn ℂ f U) (hnc : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) : IsOpen (f '' U) := by sorry

/-- Local injectivity where the complex derivative is nonzero. -/
theorem locally_injective_of_deriv_ne_zero {p : ℂ} (hp : p ∈ U) (hU : IsOpen U)
  (hd : DifferentiableOn ℂ f U) (hder : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ Set.InjOn f V := by sorry
