import Mathlib

variable {R : Type _} [Ring R]

variable (a b c : R)

theorem mul_zero (a : R) : a * 0 = 0 := by sorry

theorem zero_mul (a : R) : 0 * a = 0 := by sorry

theorem mul_neg (a b : R) : a * -b = -(a * b) := by sorry

theorem neg_mul (a b : R) : -a * b = -(a * b) := by sorry

theorem neg_mul_neg (a b : R) : -a * -b = a * b := by sorry

theorem mul_sub (a b c : R) : a * (b - c) = a * b - a * c := by sorry

theorem neg_one_mul (a : R) : (-1 : R) * a = -a := by sorry
