import Mathlib

/-- For any complex number z, the argument of exp z equals the imaginary
part of z up to an integer multiple of 2π, and the modulus of exp z
equals exp (real part of z). -/
theorem arg_exp_abs (z : ℂ) :
  ∃ (k : ℤ), Complex.arg (Complex.exp z) = z.im + 2 * (k : ℝ) * Real.pi ∧ Complex.abs (Complex.exp z) = Real.exp z.re := by sorry