import Mathlib
open Finset

/-- If F is a field of characteristic p ≠ 0, show that (a + b)^m = a^m + b^m, where m = p^n,
for all a, b ∈ F and any positive integer n. -/
theorem Herstein_exercise_5_1_8 {F : Type*} [Field F] (p : ℕ) [Fact (CharP F p)] (n : ℕ) (a b : F) :
  (a + b) ^ p ^ n = a ^ p ^ n + b ^ p ^ n := by sorry
