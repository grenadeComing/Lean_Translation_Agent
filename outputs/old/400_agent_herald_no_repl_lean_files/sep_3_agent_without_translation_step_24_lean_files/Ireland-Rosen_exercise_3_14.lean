import Mathlib

theorem ireland_rosen_exercise_3_14 {p q n : ℕ}
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p ≠ q)
  (hp_odd : p ≠ 2) (hq_odd : q ≠ 2)
  (hdiv : p - 1 ∣ q - 1) (hcop : Nat.gcd n (p * q) = 1) :
  (p * q : ℤ) ∣ ((n : ℤ) ^ (q - 1) - 1) := by
  sorry
