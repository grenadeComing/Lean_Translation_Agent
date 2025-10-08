import Mathlib

theorem srdoty_alg_Z_n_828 (n : ℕ) (ha : 0 < n) (a b c d : ℤ)
  (hab : a ≡ b [MOD n]) (hcd : c ≡ d [MOD n]) :
  a + c ≡ b + d [MOD n] ∧ a * c ≡ b * d [MOD n] := by
  -- translation placeholder: both congruences follow from n ∣ (a - b) and n ∣ (c - d)
  -- and basic modular arithmetic properties; this is a placeholder proof
  sorry
