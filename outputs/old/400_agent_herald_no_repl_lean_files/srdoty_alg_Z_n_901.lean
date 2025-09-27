import Mathlib

/-!
Let n be a positive integer. A congruence class [a] ∈ ℤ_n is a unit iff gcd(a, n) = 1.
Hence the set of units in ℤ_n equals the set of residue classes with gcd 1.
-/

theorem zmod_isUnit_iff_gcd {n : ℕ} (hn : 0 < n) (a : Int) :
  IsUnit (a : ZMod n) ↔ Int.gcd a n = 1 := by sorry

theorem zmod_units_eq_gcd_one {n : ℕ} (hn : 0 < n) :
  { x : ZMod n | IsUnit x } = { x : ZMod n | ∃ b : Int, x = (b : ZMod n) ∧ Int.gcd b n = 1 } := by sorry
