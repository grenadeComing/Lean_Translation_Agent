import Mathlib

/--
If a is an integer with |a| > 1 and n > m, then gcd(a^{2^n}+1, a^{2^m}+1) = 2 when a is even,
and = 1 when a is odd. We state two lemmas separating the even and odd cases.
-/

theorem gcd_pow2_add_one_even {a : ℤ} (ha_even : 2 ∣ a) (ha_abs : Int.natAbs a > 1) {n m : ℕ} (h : n > m) :
  Int.gcd (a ^ (2 ^ n) + 1) (a ^ (2 ^ m) + 1) = 2 := by sorry

theorem gcd_pow2_add_one_odd {a : ℤ} (ha_odd : ¬ (2 ∣ a)) (ha_abs : Int.natAbs a > 1) {n m : ℕ} (h : n > m) :
  Int.gcd (a ^ (2 ^ n) + 1) (a ^ (2 ^ m) + 1) = 1 := by sorry
