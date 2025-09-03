import Mathlib

open Polynomial

/-
Exercise (Artin 11.4.6(c)).
Show that x^3 - 9 is irreducible over F_{31}.
-/
theorem Artin_exercise_11_4_6c : Irreducible (X ^ 3 - 9 : Polynomial (ZMod 31)) := by sorry
