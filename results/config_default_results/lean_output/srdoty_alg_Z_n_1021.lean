import Mathlib

/-- Let n>1 be an integer. Prove that the linear congruence a x ≡ b (mod n) has a solution in Z_n whenever the class [a] in Z_n is a unit. -/
theorem linear_congruence_has_solution_iff_is_unit {n : ℕ} (hn : 1 < n) {a : ZMod n} (b : ZMod n) : IsUnit a → ∃ x : ZMod n, a * x = b := by sorry
