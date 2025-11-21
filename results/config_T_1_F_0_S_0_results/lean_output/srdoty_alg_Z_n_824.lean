import Mathlib

/-
Let n be a fixed positive integer and let a, b, c ∈ ℤ.
Prove the following properties of congruence modulo n:
1) a ≡ a (mod n);
2) if a ≡ b (mod n) then b ≡ a (mod n);
3) if a ≡ b (mod n) and b ≡ c (mod n) then a ≡ c (mod n).

The statements below record these facts (statements only, proofs omitted).
-/

variables (n : ℤ) (hn : 0 < n)
variables (a b c : ℤ)

theorem congr_mod_refl : a ≡ a [ZMOD n] := by sorry

theorem congr_mod_symm (h : a ≡ b [ZMOD n]) : b ≡ a [ZMOD n] := by sorry

theorem congr_mod_trans (hab : a ≡ b [ZMOD n]) (hbc : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by sorry