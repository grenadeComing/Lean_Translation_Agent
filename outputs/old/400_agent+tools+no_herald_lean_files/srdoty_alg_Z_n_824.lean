import Mathlib

/--
Let n be a fixed positive integer and a, b, c ∈ ℤ. The congruence modulo n relation is
reflexive, symmetric, and transitive.
-/
theorem srdoty_alg_Z_n_824 (n : ℤ) (hn : 0 < n) (a b c : ℤ) :
  (a ≡ a [ZMOD n]) ∧ (a ≡ b [ZMOD n] → b ≡ a [ZMOD n]) ∧
  (a ≡ b [ZMOD n] → b ≡ c [ZMOD n] → a ≡ c [ZMOD n]) := by
  sorry
