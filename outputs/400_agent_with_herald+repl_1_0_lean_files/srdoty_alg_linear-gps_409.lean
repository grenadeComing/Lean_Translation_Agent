import Mathlib

/-- Elementary matrix obtained from the identity by adding `t` times row `j` to row `i`. -/
def E {n : ℕ} (i j : Fin n) (t : ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  fun a b => if a = b then (1 : ℝ) else if a = i ∧ b = j then t else 0

/-- The determinant of an elementary row-add matrix is 1, hence it lies in SL(n). -/
theorem det_E_eq_one {n : ℕ} (i j : Fin n) (h : i ≠ j) (t : ℝ) :
  Matrix.det (E i j t) = 1 := by sorry
