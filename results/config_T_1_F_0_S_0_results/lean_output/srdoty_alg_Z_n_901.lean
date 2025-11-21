import Mathlib

/-!
Let n be a positive integer. A congruence class [a] in Z_n is a unit if and only if gcd(a,n) = 1.
Hence, the set Z_n^× of units in Z_n is equal to { [a] in Z_n : gcd(a,n) = 1 }.
-/

theorem is_unit_zmod_iff_gcd {n : ℕ} (hn : 0 < n) (a : ℤ) :
  IsUnit (a : ZMod n) ↔ Nat.gcd a.natAbs n = 1 := by sorry

theorem units_set_eq_coprime_reps {n : ℕ} (hn : 0 < n) :
  { x : ZMod n | IsUnit x } = { x : ZMod n | ∃ k : ℤ, x = (k : ZMod n) ∧ Nat.gcd k.natAbs n = 1 } := by sorry
