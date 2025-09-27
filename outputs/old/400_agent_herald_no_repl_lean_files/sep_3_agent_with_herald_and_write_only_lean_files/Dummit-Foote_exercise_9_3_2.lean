import Mathlib

/-!
Exercise: Prove that if f(x) and g(x) are polynomials with rational coefficients
whose product f(x) g(x) has integer coefficients, then the product of any
coefficient of g(x) with any coefficient of f(x) is an integer.
-/

theorem Dummit_Foote_exercise_9_3_2 (f g : Polynomial ℚ)
  (h : ∀ n : ℕ, ∃ z : Int, (f * g).coeff n = (z : ℚ)) :
  ∀ i j : ℕ, ∃ z : Int, (f.coeff i) * (g.coeff j) = (z : ℚ) := by sorry
