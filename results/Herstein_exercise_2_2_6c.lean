import Mathlib

variable {G : Type _} [Group G]

variable (n : ℕ) (hn : 1 < n) (hpow : ∀ a b : G, (a * b) ^ n = a ^ n * b ^ n)

theorem Herstein_exercise_2_2_6c (a b : G) : (a * b * a⁻¹ * b⁻¹) ^ (n * (n - 1)) = 1 := by sorry
