import Mathlib

/-!
Exercise 5.28 (Ireland & Rosen).
Show that x^4 ≡ 2 (mod p) has a solution for p ≡ 1 (mod 4) iff p is of the form A^2 + 64 B^2.
-/

theorem ireland_rosen_exercise_5_28 (p : ℕ) (hp : p.Prime) (hmod : p % 4 = 1) :
  (∃ x : ZMod p, x ^ 4 = (2 : ZMod p)) ↔ ∃ A B : ℤ, (p : ℤ) = A ^ 2 + 64 * B ^ 2 := by
  sorry
