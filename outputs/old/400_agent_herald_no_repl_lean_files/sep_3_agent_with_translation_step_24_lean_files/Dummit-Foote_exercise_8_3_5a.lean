import Mathlib

open Polynomial

/-- We model R = ℤ[√(-n)] as AdjoinRoot of X^2 + n over ℤ. -/
def R (n : ℕ) := AdjoinRoot (X ^ 2 + C (n : ℤ))

theorem Dummit_Foote_exercise_8_3_5a (n : ℕ) (h_squarefree : Squarefree n) (hn : 3 < n) :
  Irreducible (AdjoinRoot.mk (X ^ 2 + C (n : ℤ)) (C (2 : ℤ))) ∧
  Irreducible (AdjoinRoot.root (X ^ 2 + C (n : ℤ))) ∧
  Irreducible (AdjoinRoot.mk (X ^ 2 + C (n : ℤ)) (C (1 : ℤ)) + AdjoinRoot.root (X ^ 2 + C (n : ℤ))) := by
  sorry
