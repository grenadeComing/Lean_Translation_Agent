import Mathlib

/-!
Let z ∈ ℂ. Show that Arg(e^z) = Im z and |e^z| = e^{Re z}.
-/-

theorem arg_abs_exp (z : ℂ) : Complex.arg (Complex.exp z) = z.im ∧ Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
