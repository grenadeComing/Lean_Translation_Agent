import Mathlib

open Nat

/-- A representative a (natural number) is a unit in ZMod n iff gcd(a,n) = 1. -/
theorem zmod_isUnit_iff_coprime {n : ℕ} (hn : 0 < n) (a : ℕ) :
  IsUnit (a : ZMod n) ↔ Nat.Coprime a n := by sorry

/-- The set of units in ZMod n equals the set of residue classes represented by
    naturals coprime to n. -/
theorem zmod_units_eq_coprime {n : ℕ} (hn : 0 < n) :
  {a : ZMod n | IsUnit a} = { a : ZMod n | ∃ m : ℕ, a = (m : ZMod n) ∧ Nat.Coprime m n } := by sorry
