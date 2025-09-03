import Mathlib

/-!
Exercise: If f(x) and g(x) are polynomials with rational coefficients whose product
f(x) g(x) has integer coefficients, then the product of any coefficient of g(x)
with any coefficient of f(x) is an integer.

We state the hypothesis as: for all n, (f * g).coeff n is an integer when viewed
as a rational number, i.e. there exists z : Int with (f*g).coeff n = (z : ℚ).
The conclusion is: for all i j, f.coeff i * g.coeff j is an integer (as a rational).
-/

open Polynomial

theorem dummit_foote_exercise_9_3_2 (f g : Polynomial ℚ)
  (h : ∀ n : ℕ, ∃ z : ℤ, (f * g).coeff n = (z : ℚ)) :
  ∀ i j : ℕ, ∃ z : ℤ, (f.coeff i * g.coeff j : ℚ) = (z : ℚ) := by sorry
