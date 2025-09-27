import Mathlib

open Complex

theorem nonvanishing_entire_has_log (f : Complex → Complex) (hf : IsHolomorphicOn f Set.univ)
  (h0 : ∀ z, f z ≠ 0) :
  ∃ g : Complex → Complex, IsHolomorphicOn g Set.univ ∧ ∀ z, Complex.exp (g z) = f z := by sorry
