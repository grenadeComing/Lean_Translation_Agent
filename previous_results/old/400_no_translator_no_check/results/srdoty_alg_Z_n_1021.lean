import Mathlib

/-!
Let n > 1 be an integer. Prove that the linear congruence ax ≡ b (mod n)
has a solution in ℤ_n whenever the class [a] ∈ ℤ_n is a unit.
-/

theorem linear_congruence_of_unit {n : Nat} (hn : 1 < n) (a b : ZMod n) (ha : IsUnit a) :
  ∃ x : ZMod n, a * x = b := by sorry
