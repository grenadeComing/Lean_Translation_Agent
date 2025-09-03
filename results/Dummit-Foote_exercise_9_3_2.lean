import Mathlib

open Polynomial

/-- If f and g are polynomials over Q and their product has integer coefficients,
    then the product of any coefficient of f with any coefficient of g is an integer. -/
theorem dummit_foote_exercise_9_3_2 (f g : Polynomial ℚ)
  (h : ∀ n : ℕ, ∃ z : Int, (f * g).coeff n = (z : ℚ)) :
  ∀ i j : ℕ, ∃ z : Int, f.coeff i * g.coeff j = (z : ℚ) := by sorry