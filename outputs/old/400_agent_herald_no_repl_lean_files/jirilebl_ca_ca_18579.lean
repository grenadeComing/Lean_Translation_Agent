import Mathlib

/-!
Let z ∈ ℂ. Prove |e^z| = e^{Re z}.
-/

theorem complex_abs_exp (z : Complex) : Complex.abs (Complex.exp z) = Real.exp z.re := by
  sorry
