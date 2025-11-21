import Mathlib

/-!
Let n ≥ 1 and let S_n be the symmetric group on {1,..,n}.
For any α, β ∈ S_n, sgn(αβ) = sgn(α) sgn(β).
We formalize this using Equiv.Perm (Fin n) and Equiv.Perm.sign.
-/

theorem srdoty_sign_mul {n : Nat} (hn : 1 ≤ n) (α β : Equiv.Perm (Fin n)) :
  Equiv.Perm.sign (α * β) = Equiv.Perm.sign α * Equiv.Perm.sign β := by sorry
