import Mathlib

open Equiv

/-- For n ≥ 1, S_n denotes the symmetric group on n points (we take Perm (Fin n)).
    For any α, β ∈ S_n we have sgn (α * β) = sgn α * sgn β. -/
lemma sgn_mul {n : ℕ} (hn : 1 ≤ n) (α β : Perm (Fin n)) : (α * β).sign = α.sign * β.sign := by sorry