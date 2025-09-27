import Mathlib

open Matrix

/-- Elementary matrix obtained from the identity by adding `t` times row `j` to row `i`. -/
def Eij {n : ℕ} (i j : Fin n) (t : ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  fun a b => (if a = b then (1 : ℝ) else 0) + if a = i ∧ b = j then t else 0

/-- For i ≠ j, the elementary row-addition matrix has determinant 1, hence lies in SL(n). -/
theorem det_Eij_eq_one {n : ℕ} (i j : Fin n) (t : ℝ) (h : i ≠ j) :
  (Eij i j t).det = 1 := by sorry
