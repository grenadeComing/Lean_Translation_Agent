import Mathlib

-- Show that X^2 + X + 1 is irreducible over F2 (ZMod 2)
open Polynomial

theorem Artin_exercise_11_4_6a : Irreducible (X ^ 2 + X + C (1 : ZMod 2) : Polynomial (ZMod 2)) := by sorry
