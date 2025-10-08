import Mathlib

/-- Let z : Complex. Show that Arg (exp z) = Im z and |exp z| = exp (Re z). -/
theorem arg_exp_extracted (z : ℂ) : (Complex.exp z).arg = z.im ∧ Complex.abs (Complex.exp z) = Complex.exp z.re := by sorry
