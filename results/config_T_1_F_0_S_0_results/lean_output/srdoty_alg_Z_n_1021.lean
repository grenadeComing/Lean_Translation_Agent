import Mathlib

/-- Let n > 1 be an integer. If the class `a` in `ZMod n` is a unit, then for every `b : ZMod n` there
exists `x : ZMod n` with `a * x = b` (i.e. the linear congruence `a x ≡ b (mod n)` has a solution
in `Z_n`). -/
theorem linear_congruence_has_solution_for_unit_class {n : ℕ} (hn : 1 < n) {a : ZMod n} (ha : IsUnit a) :
  ∀ (b : ZMod n), ∃ x : ZMod n, a * x = b := by sorry