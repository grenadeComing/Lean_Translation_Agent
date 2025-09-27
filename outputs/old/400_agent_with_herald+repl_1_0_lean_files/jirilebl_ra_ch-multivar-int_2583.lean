import Mathlib

/-
Let R ⊂ ℝ^n be a closed rectangle and let f : R → ℝ be Riemann integrable with f(x) ≥ 0 for all x ∈ R.
Show that if ∫_R f = 0, then there exists a set E ⊂ R of outer measure zero such that f(x) = 0 for all x ∈ R \ E.

This file provides a Lean4 statement of the above theorem. We introduce abstract constants for
Riemann integrability, the Riemann integral on a rectangle, and the notion "outer measure zero"
so that the statement can be expressed without giving a full proof.
-/

variable {n : ℕ}

-- Abstract predicates/constants to avoid relying on a specific integration library in this file.
constant Riemann_integrable_on : ( (Fin n → ℝ) → Set (Fin n → ℝ) → Prop )
constant integral_on : ( (Fin n → ℝ) → Set (Fin n → ℝ) → ℝ )
constant outer_measure_zero : Set (Fin n → ℝ) → Prop

/-- If f ≥ 0 on a closed rectangular domain R and the Riemann integral of f over R is 0,
then f = 0 off a set of outer measure zero (on R). -/
theorem riemann_nonneg_integral_zero_ae_zero {
  R : Set (Fin n → ℝ) } {f : (Fin n → ℝ) → ℝ}
  (hR_closed : Prop) -- placeholder: R is a closed rectangle
  (hR_rect : Prop)   -- placeholder: R is a rectangle
  (hintegrable : Riemann_integrable_on f R)
  (h_nonneg : ∀ x, x ∈ R → 0 ≤ f x)
  (h_int0 : integral_on f R = 0) :
  ∃ E : Set (Fin n → ℝ), outer_measure_zero E ∧ ∀ x, x ∈ R \ E → f x = 0 := by sorry
