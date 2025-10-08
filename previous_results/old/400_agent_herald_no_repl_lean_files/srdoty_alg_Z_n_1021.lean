import Mathlib

/--
Let n > 1 be an integer. If the class `a : ZMod n` is a unit, then the linear congruence
`a * x = b` has a solution in `ZMod n` (take `x = a⁻¹ * b`).
-/
theorem linear_congruence_solvable_of_unit {n : ℕ} (hn : n > 1) {a b : ZMod n} (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by sorry
