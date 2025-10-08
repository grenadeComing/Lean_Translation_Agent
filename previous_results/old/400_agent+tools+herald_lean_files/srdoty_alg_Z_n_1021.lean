import Mathlib

theorem linear_congruence_has_solution_of_unit (n : ℕ) (hn : 1 < n) {a b : ZMod n} (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by sorry
