import Mathlib

/-!
Let f be entire and suppose f(z) ≠ 0 for all z. Show that there exists a holomorphic g with f = e^g.
We express "entire" and "holomorphic" by differentiability at every point.
-/

theorem exists_holomorphic_log_of_entire_nonvanishing {f : ℂ → ℂ}
  (hf_entire : ∀ z : ℂ, DifferentiableAt ℂ f z)
  (h_nonvanish : ∀ z : ℂ, f z ≠ 0) :
  ∃ g : ℂ → ℂ, (∀ z, DifferentiableAt ℂ g z) ∧ ∀ z, f z = Complex.exp (g z) := by sorry
