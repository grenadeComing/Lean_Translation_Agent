import Mathlib

open Polynomial

/-- Dummit & Foote, exercise 9.3.2:
If f(x) and g(x) are polynomials with rational coefficients whose product f(x) g(x)
has integer coefficients, then the product of any coefficient of g(x) with any
coefficient of f(x) is an integer. -/
theorem Dummit_Foote_exercise_9_3_2 (f g : Polynomial ℚ)
  (h : ∃ p : Polynomial ℤ, Polynomial.map (Int.castRingHom ℚ) p = f * g) :
  ∀ i j : ℕ, ∃ n : ℤ, (f.coeff i * g.coeff j : ℚ) = (n : ℚ) := by sorry
