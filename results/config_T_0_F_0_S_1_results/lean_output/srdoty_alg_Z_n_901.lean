import Mathlib

/-!
Let n be a positive integer. A congruence class [a] ∈ ℤ_n is a unit iff gcd(a,n) = 1.
Hence the set ℤ_n^× of units in ℤ_n equals { [a] ∈ ℤ_n : gcd(a,n) = 1 }.
This file states these facts (without proofs).
-/

open Nat

theorem zmod_unit_iff_gcd {n : ℕ} (hn : 0 < n) (a : ℕ) :
  IsUnit (a : ZMod n) ↔ Nat.gcd a n = 1 := by sorry

theorem zmod_units_set_eq_gcd {n : ℕ} (hn : 0 < n) :
  { x : ZMod n | IsUnit x } = (fun a => (a : ZMod n)) '' { a : ℕ | Nat.gcd a n = 1 } := by sorry