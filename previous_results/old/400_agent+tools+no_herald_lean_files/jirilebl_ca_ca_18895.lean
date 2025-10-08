import Mathlib

-- Let z ∈ ℂ. Show that Arg(e^z) = Im z and |e^z| = e^{Re z}.

theorem arg_exp (z : ℂ) : Complex.arg (Complex.exp z) = z.im := by sorry

theorem abs_exp (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
