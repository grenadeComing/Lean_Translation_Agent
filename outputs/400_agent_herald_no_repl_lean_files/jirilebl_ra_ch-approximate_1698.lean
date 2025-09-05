import Mathlib

open Complex

theorem entire_nonvanishing_has_log {f : ℂ → ℂ} (hf : IsEntire f) (h : ∀ z, f z ≠ 0) :
  ∃ g : ℂ → ℂ, IsEntire g ∧ (∀ z, f z = Complex.exp (g z)) := by sorry
