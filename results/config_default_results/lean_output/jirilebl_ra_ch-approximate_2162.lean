import Mathlib

variable (IsAnalytic : (Complex → Complex) → Prop)

/-- Let f : ℂ → ℂ be analytic and suppose f(z) ≠ 0 for all z. Show that there exists a
holomorphic g with f = e^g. -/
theorem exists_analytic_log (f : Complex → Complex) (hf : IsAnalytic f) (h0 : ∀ z : Complex, f z ≠ 0) :
  ∃ g : Complex → Complex, IsAnalytic g ∧ ∀ z, f z = Complex.exp (g z) := by sorry