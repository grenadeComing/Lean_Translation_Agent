import Mathlib

/-- The elementary matrix E_{ij}(t) obtained from the identity by adding t times row j to row i. -/
def E_ij {n : ℕ} (i j : Fin n) (t : ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  fun k l => if k = l then (1 : ℝ) else if k = i ∧ l = j then t else 0

/-- For i ≠ j the elementary matrix E_{ij}(t) has determinant 1 (hence lies in SL(n)). -/
theorem e_ij_det_one {n : ℕ} (i j : Fin n) (t : ℝ) (h : i ≠ j) : (E_ij i j t).det = (1 : ℝ) := by sorry