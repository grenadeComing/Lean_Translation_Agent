import Mathlib

open Polynomial

noncomputable def R : Type := AdjoinRoot (Polynomial.X ^ 2 - 2 : Polynomial Int)

noncomputable def alpha : R := AdjoinRoot.root (Polynomial.X ^ 2 - 2 : Polynomial Int)

theorem Dummit_Foote_exercise_9_4_9 :
  Irreducible ((Polynomial.X : Polynomial R) ^ 2 - C (alpha) : Polynomial R) := by sorry
