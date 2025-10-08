import Mathlib

/-!
Exercise 4.6 (Ireland & Rosen): If p = 2^(2^n) + 1 is a Fermat prime, show that 3 is a primitive root modulo p.
We state the result below. The proof is omitted (:= by sorry) as requested.
-/

open Nat

theorem ireland_rosen_exercise_4_6 (n : ℕ) {p : ℕ} (hp : p = 2 ^ (2 ^ n) + 1) (pp : p.Prime) :
  IsPrimitiveRoot (3 : ZMod p) (p - 1) := by sorry
