import Mathlib

open Nat

/-!
Let n be a positive integer. A congruence class [a] in Z_n is a unit iff gcd(a,n)=1.
Hence, the set Z_n^× of units in Z_n equals { [a] in Z_n : gcd(a,n)=1 }.
-/

theorem ZMod_unit_iff_gcd {n : Nat} (hn : 0 < n) (a : Nat) :
  IsUnit (a : ZMod n) ↔ Nat.gcd a n = 1 := by sorry

theorem ZMod_units_eq {n : Nat} (hn : 0 < n) :
  {x : ZMod n | IsUnit x} = { x : ZMod n | ∃ a : Nat, x = (a : ZMod n) ∧ Nat.gcd a n = 1 } := by sorry
