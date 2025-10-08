import Mathlib

/--
Let n be a positive integer. Then ZMod n is a field iff n is prime.
This is a translation of the mathematical statement into Lean.
The proof is omitted.
-/
theorem zmod_is_field_iff_prime (n : Nat) (hn : 0 < n) : (Field (ZMod n)) ↔ Nat.Prime n := by
  sorry
