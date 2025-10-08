import Mathlib

/-!
# Sign is multiplicative in S_n

Let n ≥ 1 and S_n be the symmetric group on {1, ..., n} (permutations of Fin n).
We state that for any α, β ∈ S_n, sgn(αβ) = sgn(α) sgn(β).
-/

theorem sgn_mul_in_Sn {n : Nat} (hn : 1 ≤ n) :
  let S_n := Equiv.Perm (Fin n)
  ∀ α β : S_n, Equiv.Perm.sign (α * β) = Equiv.Perm.sign α * Equiv.Perm.sign β := by
  sorry
