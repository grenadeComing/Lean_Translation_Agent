import Mathlib

/-!
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic and nonconstant. Suppose α : [a,b] → U is a smooth curve
and α'(t) ≠ 0 for all t ∈ [a,b]. Then f ∘ α changes argument strictly monotonically on [a,b]
if and only if arg(f'(α(t)) α'(t)) is constant.

This file contains a direct translation of the statement into Lean4/Mathlib4 assumptions.
The lemma is stated with := by sorry (no proof).
-/

open Set
open Complex

theorem arg_comp_strict_mono_iff_arg_deriv_const {
  a b : ℝ} {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} {α : ℝ → ℂ}
  (hα : DifferentiableOn ℝ α (Icc a b)) (hα_range : ∀ t ∈ Icc a b, α t ∈ U)
  (hα'_nonzero : ∀ t ∈ Icc a b, deriv α t ≠ 0) (hf : DifferentiableOn ℂ f U)
  (hderiv_nonzero : ∀ t ∈ Icc a b, deriv f (α t) ≠ 0) :
  (StrictMonoOn (Complex.arg ∘ f ∘ α) (Icc a b) ∨ StrictAntiOn (Complex.arg ∘ f ∘ α) (Icc a b)) ↔
  ∃ c : ℝ, ∀ t ∈ Icc a b, Complex.arg (deriv f (α t) * deriv α t) = c := by sorry
