import Mathlib

/-- Let p be an odd prime. Then x^4 ≡ 2 (mod p) has a solution for p ≡ 1 (mod 4)
    iff p can be written as p = A^2 + 64 B^2 for some integers A, B. -/
theorem Ireland_Rosen_exercise_5_28 {p : ℕ} (hp : Nat.Prime p) (hmod4 : p % 4 = 1) :
  (∃ x : ZMod p, x ^ 4 = (2 : ZMod p)) ↔ ∃ A B : ℤ, (p : ℤ) = A ^ 2 + 64 * B ^ 2 := by sorry
