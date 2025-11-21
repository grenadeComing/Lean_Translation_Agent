import Mathlib

/-- Let n be a fixed positive integer and let a,b,c ∈ ℤ. If a ≡ b (mod n) and b ≡ c (mod n), then a ≡ c (mod n). -/
theorem srdoty_alg_Z_n_607 (n : ℕ) (a b c : Int) (hn : 0 < n) :
  a ≡ b [MOD n] → b ≡ c [MOD n] → a ≡ c [MOD n] := by sorry