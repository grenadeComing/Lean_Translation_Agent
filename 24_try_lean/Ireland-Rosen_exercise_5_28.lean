import Mathlib

/-- Exercise: For a prime p with p ≡ 1 (mod 4), x^4 ≡ 2 (mod p) has a solution iff
    p is of the form A^2 + 64 B^2. -/
theorem ireland_rosen_exercise_5_28 (p : ℕ) (hp : p.Prime) (hmod : p % 4 = 1) :
  (∃ x : ℤ, Int.ModEq (p : ℤ) (x ^ 4) 2) ↔ (∃ A B : ℤ, (p : ℤ) = A ^ 2 + 64 * B ^ 2) := by sorry
