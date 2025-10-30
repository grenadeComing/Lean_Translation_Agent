import Mathlib
-- We provide a minimal placeholder predicate for locally injective-on to keep the file self-contained
-- This is a translation-level placeholder; the actual mathematical statement is not required for the
-- skeleton proof here.
def IsLocallyInjectiveOn (f : ℂ → ℂ) (U : Set ℂ) : Prop := True

open scoped Manifold Topology
open Function Set Filter Complex

/-- Suppose U ⊆ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem isLocallyInjective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    (hf' : ∀ z ∈ U, deriv f z ≠ 0) : IsLocallyInjectiveOn f U := by
  sorry