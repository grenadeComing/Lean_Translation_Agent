import Mathlib

theorem srdoty_alg_Z_n_782 {R : Type _} [Ring R] (a b c : R) :
  a * 0 = 0 ∧ 0 * a = 0 ∧
  a * (-b) = -(a * b) ∧ (-a) * b = -(a * b) ∧
  (-a) * (-b) = a * b ∧
  a * (b - c) = a * b - a * c ∧
  (-1 : R) * a = -a := by sorry
