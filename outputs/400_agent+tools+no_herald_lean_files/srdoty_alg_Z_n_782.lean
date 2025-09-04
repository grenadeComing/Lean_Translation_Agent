import Mathlib

namespace srdoty_alg_Z_n_782

variable {R : Type _} [Ring R]
variable (a b c : R)

/-- a * 0 = 0 -/
theorem mul_zero : a * 0 = 0 := by sorry

/-- 0 * a = 0 -/
theorem zero_mul : 0 * a = 0 := by sorry

/-- a * (-b) = -(a * b) -/
theorem mul_neg : a * (-b) = -(a * b) := by sorry

/-- (-a) * b = -(a * b) -/
theorem neg_mul : (-a) * b = -(a * b) := by sorry

/-- (-a) * (-b) = a * b -/
theorem neg_mul_neg : (-a) * (-b) = a * b := by sorry

/-- a * (b - c) = a * b - a * c -/
theorem distrib_sub : a * (b - c) = a * b - a * c := by sorry

/-- (-1) * a = -a -/
theorem neg_one_mul : (-1 : R) * a = -a := by sorry

end srdoty_alg_Z_n_782
