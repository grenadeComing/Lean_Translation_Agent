import Mathlib

open Complex

theorem exists_entire_log (f : ℂ → ℂ) (h_diff : Differentiable ℂ f) (h_nz : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ ∀ z, Complex.exp (g z) = f z := by sorry
