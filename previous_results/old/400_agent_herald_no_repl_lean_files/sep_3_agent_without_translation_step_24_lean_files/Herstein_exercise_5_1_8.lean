import Mathlib

/-!
Exercise: If F is a field of characteristic p ≠ 0, show that (a + b)^m = a^m + b^m,
where m = p^n, for all a, b ∈ F and any positive integer n.
-/

theorem herstein_exercise_5_1_8 {F : Type*} [Field F] {p : ℕ} (h_char : CharP F p) (hp : p ≠ 0) :
  ∀ (n : ℕ) (a b : F), (a + b) ^ (p ^ n) = a ^ (p ^ n) + b ^ (p ^ n) := by
  intros n a b
  -- proof omitted
  sorry
