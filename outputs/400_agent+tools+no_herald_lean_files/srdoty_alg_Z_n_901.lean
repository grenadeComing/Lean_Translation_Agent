import Mathlib

/-!
Let n be a positive integer. A congruence class [a] in ZMod n is a unit iff gcd(a,n) = 1.
Hence the set of units in ZMod n equals { [a] : ZMod n | gcd(a,n) = 1 }.
-/

theorem zmod_unit_iff_gcd {n : ℕ} (hn : 0 < n) (a : ℕ) : IsUnit (a : ZMod n) ↔ Nat.gcd a n = 1 := by sorry

theorem zmod_units_set_eq {n : ℕ} (hn : 0 < n) : { x : ZMod n | IsUnit x } = { x : ZMod n | ∃ a : ℕ, x = (a : ZMod n) ∧ Nat.gcd a n = 1 } := by sorry
