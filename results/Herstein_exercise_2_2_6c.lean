import Mathlib

variable {G : Type*} [Group G]

section Herstein

variable (n : Int) (hn : 1 < n)
variable (h : ∀ a b : G, (a * b) ^ n = a ^ n * b ^ n)

/-- Let G be a group in which (a b)^n = a^n b^n for some fixed integer n > 1 and all a, b in G.
    Then for all a, b in G we have (a b a^{-1} b^{-1})^{n(n-1)} = 1. -/
theorem Herstein_exercise_2_2_6c (a b : G) : (a * b * a⁻¹ * b⁻¹) ^ (n * (n - 1)) = 1 := by sorry

end Herstein
