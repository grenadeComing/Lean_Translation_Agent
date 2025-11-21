import Mathlib

/-- Let R ⊂ ℝ^n be a closed rectangle and let f : R → ℝ be Riemann integrable with f(x) ≥ 0 for all x ∈ R.
    Show that if ∫_R f = 0, then there exists a set E ⊂ R of outer measure zero such that f(x) = 0 for all x ∈ R \ E.

    This file records the statement only, using abstract predicates for Riemann integrability, the Riemann integral,
    and outer measure zero. -/

theorem exists_set_of_outer_measure_zero_for_nonneg_riemann_zero_integral
  {n : ℕ} {R : Set (Fin n → ℝ)} (R_closed_rectangle : IsClosed R)
  {f : (Fin n → ℝ) → ℝ}
  (IsRiemannIntegrableOn : (( (Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop))
  (RiemannIntegralOn : (((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ))
  (OuterMeasureZero : Set (Fin n → ℝ) → Prop)
  (hriem : IsRiemannIntegrableOn f R)
  (hnonneg : ∀ x ∈ R, 0 ≤ f x)
  (hint_zero : RiemannIntegralOn f R = 0) :
  ∃ E : Set (Fin n → ℝ), OuterMeasureZero E ∧ E ⊆ R ∧ ∀ x ∈ R \ E, f x = 0 := by sorry