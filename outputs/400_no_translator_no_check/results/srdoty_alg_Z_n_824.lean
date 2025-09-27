import Mathlib

/-!
File: srdoty_alg_Z_n_824.lean
Statement: Let n be a fixed positive integer and let a, b, c ∈ ℤ. Prove the following properties of congruence modulo n:
1) a ≡ a (mod n)
2) if a ≡ b (mod n) then b ≡ a (mod n)
3) if a ≡ b (mod n) and b ≡ c (mod n) then a ≡ c (mod n)

We state these as lemmas about Int.ModEq (notation: `a ≡ b [ZMOD n]`) and leave the proofs as `by sorry`.
-/

variable (n : Int)

theorem srdoty_alg_Z_n_824_refl (a : Int) : a ≡ a [ZMOD n] := by sorry

theorem srdoty_alg_Z_n_824_symm {a b : Int} (h : a ≡ b [ZMOD n]) : b ≡ a [ZMOD n] := by sorry

theorem srdoty_alg_Z_n_824_trans {a b c : Int} (hab : a ≡ b [ZMOD n]) (hbc : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry
