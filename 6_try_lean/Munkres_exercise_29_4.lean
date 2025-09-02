import Mathlib

/-- The unit interval as a subtype of ℝ. -/
def UnitInterval := { x : ℝ // 0 ≤ x ∧ x ≤ 1 }

/-- The product of countably many copies of the unit interval with the uniform topology is not locally compact. -/
theorem Munkres_exercise_29_4 : ¬ LocallyCompactSpace (ℕ → UnitInterval) := by sorry
