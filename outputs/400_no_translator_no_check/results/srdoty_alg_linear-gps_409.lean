import Mathlib

open Matrix

/-!
Elementary matrix obtained from the identity by adding `t` times row `j` to row `i`.
We show its determinant is 1, hence it lies in SL(n).
-/

theorem elementary_add_row_mem_SL {n : ℕ} (i j : Fin n) (h : i ≠ j) (t : ℝ) :
  Matrix.det ((1 : Matrix (Fin n) (Fin n) ℝ) + Matrix.single i j t) = 1 := by
  -- proof omitted
  sorry
