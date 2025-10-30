import Mathlib

open Function

/-- Let n be a positive integer. A congruence class [a] ∈ Z_n is a unit iff gcd(a,n) = 1. Hence, the set Z_n^{×} of units in Z_n is equal to { [a] ∈ Z_n : gcd(a,n) = 1 }. -/
theorem isUnit_iff_coprime_mod {n : ℕ} [NeZero n] (a : ZMod n) : IsUnit a ↔ Nat.Coprime a.val.natAbs n := by
  sorry

/-- The set of units in Z_n is exactly the set of residue classes [a] with gcd(a,n) = 1. -/
theorem units_set_eq_coprime {n : ℕ} [NeZero n] :
  { a : ZMod n // IsUnit a } = { a : ZMod n | Nat.Coprime a.val.natAbs n } := by
  sorry
