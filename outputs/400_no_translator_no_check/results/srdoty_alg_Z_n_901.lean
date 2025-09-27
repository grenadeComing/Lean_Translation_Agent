import Mathlib

open Nat

/--
Let n be a positive integer. A congruence class [a] ∈ ℤ_n is a unit iff gcd(a,n) = 1.
Hence the set of units equals { [a] ∈ ℤ_n : gcd(a,n) = 1 }.
-/
theorem srdoty_alg_Z_n_901 {n : ℕ} (hn : 0 < n) :
  (∀ a : ZMod n, IsUnit a ↔ Nat.gcd (ZMod.val a) n = 1) ∧
  ({a : ZMod n | IsUnit a} = {a : ZMod n | Nat.gcd (ZMod.val a) n = 1}) := by
  sorry
