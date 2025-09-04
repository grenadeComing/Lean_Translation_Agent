import Mathlib

/-- For n ≥ 1, the sign of the product of two permutations equals the product of their signs. -/
theorem perm_sign_mul {n : Nat} (α β : Equiv.Perm (Fin n)) : (α * β).sign = α.sign * β.sign := by sorry
