import Mathlib

/-! Rudin Exercise 1.13
If x, y are complex, prove that ||x|-|y|| ≤ |x-y|.
-/

open Norm

theorem rudin_exercise_1_13 (x y : Complex) :
  abs (Norm.norm x - Norm.norm y) ≤ Norm.norm (x - y) := by sorry
