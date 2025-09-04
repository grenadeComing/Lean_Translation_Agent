import Mathlib

/-- For n ≥ 1 and permutations α, β of {1, ..., n} (encoded as Perm (Fin n)), the sign is multiplicative. -/
theorem sgn_mul {n : ℕ} (hn : 1 ≤ n) (α β : Equiv.Perm (Fin n)) :
  Equiv.Perm.sign (α * β) = Equiv.Perm.sign α * Equiv.Perm.sign β := by sorry
