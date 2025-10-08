import Mathlib

variable {n : ℕ}
variable {R : Set (Fin n → ℝ)}
variable (riemann_integrable_on : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop)
variable (riemann_integral_on : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ)
variable (closed_set : Set (Fin n → ℝ) → Prop)
variable (outer_measure_zero : Set (Fin n → ℝ) → Prop)

/-- Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
    Assume there exists a closed set E ⊆ R with outer measure zero such that f = g on R \ E.
    Then the Riemann integrals of f and g over R are equal. -/
theorem integral_eq_of_eq_off_null {f g : (Fin n → ℝ) → ℝ}
  (hf : riemann_integrable_on f R)
  (hg : riemann_integrable_on g R)
  {E : Set (Fin n → ℝ)}
  (hE_closed : closed_set E)
  (hE_null : outer_measure_zero E)
  (h_eq : ∀ x, x ∈ R \ E → f x = g x) :
  riemann_integral_on f R = riemann_integral_on g R := by sorry
