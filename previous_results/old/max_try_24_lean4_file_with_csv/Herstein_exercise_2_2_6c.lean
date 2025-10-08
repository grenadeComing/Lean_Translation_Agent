import Mathlib

/-- Let G be a group in which (a * b)^n = a^n * b^n for some fixed integer n > 1 and for all a, b in G.
    Then for all a, b in G, (a * b * a^{-1} * b^{-1})^{n(n-1)} = 1. -/

theorem herstein_exercise_2_2_6c {G : Type _} [Group G] (n : ℕ) (hne : 1 < n)
  (h : ∀ a b : G, (a * b) ^ n = a ^ n * b ^ n) (a b : G) :
  (a * b * a⁻¹ * b⁻¹) ^ (n * (n - 1)) = 1 := by sorry
