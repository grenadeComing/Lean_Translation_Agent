import Mathlib

/-!
Let R[t] be the vector space of polynomials in one variable t over the reals.
Let D : R[t] → R[t] be the derivative operator (derivative in t).
Show that D is a linear operator.
-/

theorem derivative_is_linear :
  ∃ (D : Polynomial ℝ →ₗ[ℝ] Polynomial ℝ), ∀ p : Polynomial ℝ, D p = Polynomial.derivative p := by sorry
