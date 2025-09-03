import Mathlib

open Set

theorem Rudin_exercise_1_5 (A : Set ℝ) (hA : A.Nonempty) (h : BddBelow A) : sInf A = - sSup ((fun x => -x) '' A) := by sorry
