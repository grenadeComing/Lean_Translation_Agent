import Mathlib

/-- The polynomial X^2 - √2 is irreducible over Z[√2] = AdjoinRoot (X^2 - 2) -/
theorem Dummit_Foote_exercise_9_4_9 :
  Irreducible (Polynomial.X ^ 2 - Polynomial.C (AdjoinRoot.root (Polynomial.X ^ 2 - 2 : Polynomial Int)) :
    Polynomial (AdjoinRoot (Polynomial.X ^ 2 - 2 : Polynomial Int))) := by sorry
