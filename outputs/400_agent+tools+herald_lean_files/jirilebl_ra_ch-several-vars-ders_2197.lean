import Mathlib

/-!
Multilinearity of determinant: the determinant is linear in each row.
We state the additivity in one row. Proof omitted (by sorry).
-/

theorem det_row_add {n : Nat} {R : Type _} [CommRing R] (i0 : Fin n)
  (M M1 M2 : Matrix (Fin n) (Fin n) R)
  (h_rows : ∀ i j, i ≠ i0 → M i j = M1 i j)
  (h_rows' : ∀ i j, i ≠ i0 → M1 i j = M2 i j)
  (h_sum : ∀ j, M i0 j = M1 i0 j + M2 i0 j) :
  Matrix.det M = Matrix.det M1 + Matrix.det M2 := by sorry
