import Mathlib
open Nat
open ZMod

/-- Show that x^4 ≡ 2 (mod p) has a solution for p ≡ 1 (mod 4) iff p is of the form A^2 + 64 B^2. -/
theorem ireland_rosen_exercise_5_28 (p : ℕ) [Fact (Nat.Prime p)] (hp : p ≡ 1 [ZMOD 4]) :
  (∃ x : ZMod p, x ^ 4 = 2) ↔ ∃ A B : ℕ, p = A ^ 2 + 64 * B ^ 2 := by sorry
