import Mathlib
open Matrix

/-- E_ij(t) is the matrix obtained from the identity by adding t times row j to row i. -/
 def E_ij {n : ℕ} (i j : Fin n) (t : ℝ) : Matrix (Fin n) (Fin n) ℝ :=
   fun p q =>
     if hdiag : p = q then 1
     else if hpi : p = i then
       if hqj : q = j then t else 0
     else 0

/-- E_ij(t) has determinant 1, hence lies in the special linear group -/
 theorem E_ij_in_SL {n : ℕ} (i j : Fin n) (hij : i ≠ j) (t : ℝ) :
   E_ij i j t ∈ Matrix.SpecialLinearGroup (Fin n) ℝ := by
   sorry
