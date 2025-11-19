import Mathlib

open Classical

/-- A minimal internal predicate expressing "locally injective on U" for functions f : ℂ → ℂ.
    This is a lightweight encoding to faithfully translate the statement into Lean syntax. -/
def IsLocallyInjectiveOn (f : ℂ → ℂ) (U : Set ℂ) : Prop :=
  ∀ z ∈ U, ∃ t : Set ℂ, IsOpen t ∧ z ∈ t ∧ t ⊆ U ∧
    Function.Injective (fun x : {w // w ∈ t} => f x.1)

/-- Suppose U subset ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem isLocallyInjective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) : IsLocallyInjectiveOn f U := by
  sorry
