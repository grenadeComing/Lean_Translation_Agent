import Mathlib


/-- If F is a field of characteristic p ≠ 0, show that (a + b)^m = a^m + b^m, where m = p^n, for all a, b ∈ F and any positive integer n. -/
theorem add_pow_eq_add_pow_mod_char_pow {F : Type*} [Field F] (p : ℕ) [Fact (CharP F p)] (n : ℕ) (a b : F) :
  (a + b) ^ p ^ n = a ^ p ^ n + b ^ p ^ n := by sorry
