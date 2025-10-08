import Mathlib

-- Let n be a fixed positive integer and let a b c : ℤ. 
-- If a ≡ b [ZMOD n] and b ≡ c [ZMOD n], then a ≡ c [ZMOD n].
-- This is the transitivity of congruence modulo n.
 theorem mod_zmod_trans_of_pos (n : ℕ) (hn : 0 < n) (a b c : ℤ)
   (ha : a ≡ b [ZMOD n]) (hb : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by
  sorry
