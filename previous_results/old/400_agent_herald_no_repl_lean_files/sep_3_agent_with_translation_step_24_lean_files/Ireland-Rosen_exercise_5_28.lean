import Mathlib

open Nat

theorem Ireland_Rosen_exercise_5_28 {p : Nat} (hp : p.Prime) (hmod4 : p % 4 = 1) :
  (∃ x : Nat, (x ^ 4) % p = 2 % p) ↔ (∃ A B : Nat, p = A ^ 2 + 64 * B ^ 2) := by sorry
