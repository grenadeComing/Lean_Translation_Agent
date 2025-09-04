import Mathlib

/-!
Let n be a positive integer. Then ZMod n is a field iff n is prime.
-/

theorem zmod_isField_iff_prime {n : ℕ} (hn : 0 < n) : IsField (ZMod n) ↔ Nat.Prime n := by sorry
