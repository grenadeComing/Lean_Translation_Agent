import Mathlib

/--
Let z ∈ ℂ. Prove that |e^z| = e^{Re z}.
-/
theorem abs_exp (z : ℂ) : Complex.abs (Complex.exp z) = Real.exp z.re := by sorry
