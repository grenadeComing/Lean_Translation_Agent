import Mathlib

open Matrix

/--
For 1 ≤ i ≠ j ≤ n and t ∈ ℝ, let E_{ij}(t) denote the elementary matrix obtained
from the identity by adding t times row j to row i. This matrix has determinant 1,
so it lies in SL(n, ℝ).
-/
theorem elementary_row_add_matrix_mem_SL (n : Nat) (i j : Fin n) (t : ℝ) (h : i ≠ j) :
  Matrix.det ((1 : Matrix (Fin n) (Fin n) ℝ) + Matrix.of (fun a b => if a = i ∧ b = j then t else 0)) = 1 := by
  sorry
