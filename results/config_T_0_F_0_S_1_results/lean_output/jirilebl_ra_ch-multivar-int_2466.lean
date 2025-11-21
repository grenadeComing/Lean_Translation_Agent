import Mathlib

open Set

variable {n : ℕ}

/--
Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
Assume there exists a closed set E ⊆ R with outer measure zero such that f = g on R \ E.
Then the Riemann integrals of f and g over R are equal.
-/
theorem integral_eq_of_eq_outside_closed_null
  {R : Set (Fin n → ℝ)} (hR_rect : IsClosedRectangle R)
  {f g : (Fin n → ℝ) → ℝ}
  (hf : RiemannIntegrableOn f R) (hg : RiemannIntegrableOn g R)
  {E : Set (Fin n → ℝ)} (hE_closed : IsClosed E) (hE_sub : E ⊆ R)
  (hE_outer0 : outer_measure E = 0)
  (hfg : ∀ x ∈ R \ E, f x = g x) :
  RiemannIntegral.integral R f = RiemannIntegral.integral R g := by sorry
