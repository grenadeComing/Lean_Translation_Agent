import Mathlib

/-!
Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) * exp |z| and |cos z| ≤ (1/2) * exp |z|.
-/

theorem abs_sin_le_exp (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_exp (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry
