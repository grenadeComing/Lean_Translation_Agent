import Mathlib

/-- For all complex numbers z, ∥sinh z∥ ≤ (1/2) * e^{∥z∥} and ∥cosh z∥ ≤ (1/2) * e^{∥z∥}. -/
axiom sinh_le_exp_norm (z : Complex) : Norm.norm (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Norm.norm z)

axiom cosh_le_exp_norm (z : Complex) : Norm.norm (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Norm.norm z)
