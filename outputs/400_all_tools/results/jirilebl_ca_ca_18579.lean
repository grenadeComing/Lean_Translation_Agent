import Mathlib

/-- Let z be a complex number. Prove that |e^z| = e^{Re z}. -/
theorem abs_exp (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
