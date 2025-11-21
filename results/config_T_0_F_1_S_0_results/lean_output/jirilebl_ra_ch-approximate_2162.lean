import Mathlib

theorem exists_entire_log_of_no_zeros (f : ℂ → ℂ) (hf : Differentiable ℂ f) (hfnz : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, Differentiable ℂ g ∧ ∀ z, f z = Complex.exp (g z) := by sorry
