import Mathlib

/-!
Let n be a positive integer. A congruence class [a] ∈ Z_n is a unit iff gcd(a,n) = 1.
Hence the set Z_n^× of units in Z_n equals { [a] ∈ Z_n : gcd(a,n) = 1 }.
-/

theorem zmod_is_unit_iff_gcd {n : ℕ} (hn : 0 < n) (x : ZMod n) :
  IsUnit x ↔ Nat.gcd (ZMod.val x) n = 1 := by sorry

theorem zmod_units_set_eq {n : ℕ} (hn : 0 < n) :
  ({ x : ZMod n | IsUnit x } : Set (ZMod n)) = { x : ZMod n | Nat.gcd (ZMod.val x) n = 1 } := by sorry
