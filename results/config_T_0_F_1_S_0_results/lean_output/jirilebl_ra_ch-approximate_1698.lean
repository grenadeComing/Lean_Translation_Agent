import Mathlib

open Complex

theorem entire_nonvanishing_has_log (f : ℂ → ℂ)
  (h_entire : ∀ z : ℂ, DifferentiableAt ℂ f z)
  (h_nz : ∀ z : ℂ, f z ≠ 0) :
  ∃ g : ℂ → ℂ, (∀ z : ℂ, DifferentiableAt ℂ g z) ∧ ∀ z : ℂ, f z = Complex.exp (g z) := by sorry
