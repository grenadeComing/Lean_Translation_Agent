import Mathlib

open Polynomial

/-- Exercise: show x^3 - 9 is irreducible over F_{31}. -/
theorem Artin_exercise_11_4_6c :
  Irreducible ((X : Polynomial (ZMod 31)) ^ 3 - C (9 : ZMod 31)) := by sorry
