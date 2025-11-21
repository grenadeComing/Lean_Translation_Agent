import Mathlib

open MeasureTheory Set

/-- Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
    Assume there exists a closed set E ⊆ R with (Lebesgue) measure zero such that f = g on R \ E.
    Then the integrals of f and g over R (w.r.t. volume) agree. -/
theorem integral_eq_of_agree_off_closed_null
  {n : ℕ} {R : Set (Fin n → ℝ)} (hR_closed : IsClosed R) (f g : (Fin n → ℝ) → ℝ)
  (hf : integrable_on f R volume) (hg : integrable_on g R volume)
  {E : Set (Fin n → ℝ)} (hE_closed : IsClosed E) (hE_sub : E ⊆ R) (hE_zero : volume E = 0)
  (h_eq : ∀ x ∈ R \ E, f x = g x) :
  ∫ x in R, f x ∂volume = ∫ x in R, g x ∂volume := by sorry