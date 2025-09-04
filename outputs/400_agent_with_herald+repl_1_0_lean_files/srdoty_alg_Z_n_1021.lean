import Mathlib

theorem linear_congruence_unit_solvable {n : Nat} (hn : 1 < n) (a b : ZMod n) (h : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by sorry
