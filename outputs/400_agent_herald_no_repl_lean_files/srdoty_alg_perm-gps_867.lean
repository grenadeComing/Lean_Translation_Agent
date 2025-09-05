import Mathlib

/-- The symmetric group on {1, ..., n} (implemented as permutations of Fin n). -/
def S_n (n : ℕ) := Perm (Fin n)

/-- For n ≥ 1 and α, β in S_n, the sign is multiplicative: sgn(αβ) = sgn(α) sgn(β). -/
theorem sgn_mul {n : ℕ} (hn : 1 ≤ n) (α β : S_n n) : (α * β).sign = α.sign * β.sign := by sorry
