import Mathlib

/-- Let n>0 be an integer and let a,b ∈ ℤ. Then a ≡ b (mod n) iff a and b have the same remainder upon division by n. -/
theorem int_congr_mod_iff_same_remainder {a b n : ℤ} (hn : 0 < n) : n ∣ (a - b) ↔ a % n = b % n := by sorry