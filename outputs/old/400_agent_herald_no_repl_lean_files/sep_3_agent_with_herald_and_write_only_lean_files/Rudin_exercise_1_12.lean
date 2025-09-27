import Mathlib
open ComplexConjugate Topology Filter

/-- If $z_1, \ldots, z_n$ are complex, prove that $|z_1 + z_2 + \ldots + z_n| \leq |z_1| + |z_2| + \cdots + |z_n|$. -/
theorem abs_sum_le_sum_abs (n : ℕ) (z : Fin n → ℂ) : 
  Complex.abs (∑ i, z i) ≤ ∑ i, Complex.abs (z i) := by sorry
