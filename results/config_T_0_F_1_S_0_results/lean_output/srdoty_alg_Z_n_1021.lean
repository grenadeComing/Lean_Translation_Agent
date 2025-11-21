import Mathlib

/--
Let n > 1 be an integer. Prove that the linear congruence ax ≡ b (mod n)
has a solution in ℤ_n whenever the class [a] ∈ ℤ_n is a unit.

We state this as: for n : ℕ with 1 < n, for a b : ZMod n, if a is a unit
then there exists x : ZMod n with a * x = b.
-/
theorem linear_congruence_has_solution_of_unit {n : ℕ} (hn : 1 < n) {a b : ZMod n} (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by
  sorry
