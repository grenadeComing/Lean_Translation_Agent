import Mathlib

theorem herstein_exercise_5_1_8 {F : Type _} [Field F] {p : ℕ} (hp : p ≠ 0) (n : ℕ) (m := p ^ n)
  [CharP F p] : ∀ a b : F, (a + b) ^ m = a ^ m + b ^ m := by
  sorry
