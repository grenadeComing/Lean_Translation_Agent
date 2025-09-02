import Mathlib

/-- If F is a field of characteristic p ≠ 0, then (a + b)^m = a^m + b^m for m = p^n. -/
theorem herstein_exercise_5_1_8 {F : Type _} [Field F] {p : ℕ} (hp : CharP F p) (hp0 : p ≠ 0) (n : ℕ) :
  ∀ a b : F, (a + b) ^ (p ^ n) = a ^ (p ^ n) + b ^ (p ^ n) := by
  sorry
