import Mathlib

/--
Let n > 1 be an integer. If the class `a : ZMod n` is a unit, then for any `b : ZMod n` the linear
congruence a * x ≡ b (mod n) has a solution x in `ZMod n`.
-/
theorem linear_congruence_solvable_of_unit {n : ℕ} (hn : 1 < n) (a b : ZMod n) (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by
  sorry