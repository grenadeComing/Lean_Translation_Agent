import Mathlib

/-- Let p and q be distinct odd primes such that p - 1 | q - 1. If gcd n (p * q) = 1, then n^(q-1) ≡ 1 (mod p*q). -/
theorem Ireland_Rosen_exercise_3_14 (p q n : ℕ)
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hp_odd : p ≠ 2) (hq_odd : q ≠ 2) (hpq : p ≠ q)
  (hdiv : (p - 1) ∣ (q - 1)) (hcopr : Nat.gcd n (p * q) = 1) : (n : ZMod (p * q)) ^ (q - 1) = 1 := by sorry