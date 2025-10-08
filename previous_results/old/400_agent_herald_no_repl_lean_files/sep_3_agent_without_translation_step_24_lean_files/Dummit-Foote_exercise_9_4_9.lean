import Mathlib

noncomputable section

open Polynomial

def f : Polynomial ℤ := X ^ 2 - C (2 : ℤ)

def R := AdjoinRoot f

instance : CommRing R := AdjoinRoot.instCommRing f

theorem Dummit_Foote_exercise_9_4_9 : Irreducible (X ^ 2 - C (AdjoinRoot.root f) : Polynomial R) := by sorry
