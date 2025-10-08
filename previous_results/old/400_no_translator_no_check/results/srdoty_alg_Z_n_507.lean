import Mathlib

/-!
Simple facts about negation and multiplication in a ring:
For a ring R and elements a, b : R we have
a * (-b) = -(a * b) and (-a) * b = -(a * b).
-/

variable {R : Type _} [Ring R]

theorem ring_mul_neg_eq_neg_mul (a b : R) : a * (-b) = -(a * b) := by sorry

theorem ring_neg_mul_eq_neg_mul (a b : R) : (-a) * b = -(a * b) := by sorry

theorem ring_mul_neg_neg_mul (a b : R) : a * (-b) = -(a * b) ∧ -(a * b) = (-a) * b := by sorry
