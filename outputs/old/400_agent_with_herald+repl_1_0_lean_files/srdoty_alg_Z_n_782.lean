import Mathlib

/-!
# Basic ring lemmas (translated)

Let R be a ring and let a, b, c ∈ R. The following statements are recorded (proofs omitted):
- a * 0 = 0 and 0 * a = 0
- a * (-b) = -(a * b) and (-a) * b = -(a * b)
- (-a) * (-b) = a * b
- a * (b - c) = a * b - a * c
- (-1 : R) * a = -a
-/

variable {R : Type _} [Ring R]

variable (a b c : R)

theorem my_mul_zero : a * 0 = 0 := by sorry

theorem my_zero_mul : (0 : R) * a = 0 := by sorry

theorem my_mul_neg : a * -b = -(a * b) := by sorry

theorem my_neg_mul : -a * b = -(a * b) := by sorry

theorem my_neg_mul_neg : (-a) * (-b) = a * b := by sorry

theorem my_mul_sub : a * (b - c) = a * b - a * c := by sorry

theorem my_neg_one_mul : (-1 : R) * a = -a := by sorry
