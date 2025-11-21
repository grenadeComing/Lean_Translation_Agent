import Mathlib
open Function

/-- Let n>1 be an integer. Prove that the linear congruence ax ≡ b (mod n) has a solution in Z_n whenever the class [a] in Z_n is a unit. -/
theorem unit_solvable {n : Nat} (a b : Int) (ha : IsUnit (a : ZMod n)) : ∃ x : ZMod n, (a : ZMod n) * x = (b : ZMod n) := by sorry