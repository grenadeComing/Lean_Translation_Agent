import Mathlib

/-!
  Statement: For z ∈ ℂ, Arg(e^z) = Im z and |e^z| = e^{Re z}.
  We state these as lemmas (with proof omitted using `sorry`).
-/

theorem arg_exp_eq_im (z : Complex) : Complex.arg (Complex.exp z) = z.im := by sorry

theorem abs_exp_eq_exp_re (z : Complex) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
