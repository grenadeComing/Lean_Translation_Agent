import Mathlib

open Matrix

theorem det_Eij_eq_one (n : ℕ) (i j : Fin n) (h : i ≠ j) (t : ℝ) :
  Matrix.det (Matrix.of fun (a b : Fin n) => if a = b then (1 : ℝ) else if a = i ∧ b = j then t else 0) = 1 := by
  sorry
