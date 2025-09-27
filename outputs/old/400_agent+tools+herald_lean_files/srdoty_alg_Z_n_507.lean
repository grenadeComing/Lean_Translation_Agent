import Mathlib

/-!
Simple lemmas: in any ring R we have a * -b = -(a * b) and -a * b = -(a * b).
-/

variable {R : Type _} [Ring R]

theorem srdoty_mul_neg_eq_neg_mul (a b : R) : a * -b = -(a * b) := by sorry

theorem srdoty_neg_mul_eq_neg_mul (a b : R) : -a * b = -(a * b) := by sorry
