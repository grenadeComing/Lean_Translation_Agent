import Mathlib
open Subgroup
open Finset Nat
open scoped Classical
open Nat
open Subgroup
open Monoid
open Subgroup

/-- There is a primitive root in the multiplicative group Z_n^× iff n = 2, 4, p^t, or 2 p^t where p is an odd prime. More precisely: for n ≥ 2, IsCyclic (Units (ZMod n)) ↔ (n = 2 ∨ n = 4 ∨ ∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ t > 0 ∧ (n = p ^ t ∨ n = 2 * p ^ t)). -/
theorem isCyclic_units_zmod_iff {n : ℕ} (hn : 2 ≤ n) :
    IsCyclic (ZMod n)ˣ ↔ n = 2 ∨ n = 4 ∨ ∃ (p t : ℕ), Nat.Prime p ∧ p ≠ 2 ∧ t > 0 ∧ (n = p ^ t ∨ n = 2 * p ^ t) := by sorry
