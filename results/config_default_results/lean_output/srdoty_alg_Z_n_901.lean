import Mathlib
open Function

/-- Let n be a positive integer. A congruence class [a] in Z_n is a unit iff gcd(a,n) = 1. Hence the set Z_n^× of units in Z_n equals { [a] in Z_n : gcd(a,n) = 1 }. -/
theorem units_zmod_eq {n : ℕ} (hn : 0 < n) : (ZMod n)ˣ = {a : ZMod n | Nat.gcd a.val n = 1} := by sorry
