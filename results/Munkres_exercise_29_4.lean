import Mathlib

/-- Munkres Exercise 29.4: The countable product [0,1]^ω is not locally compact in the product/uniform topology. -/
theorem Munkres_exercise_29_4 : ¬ LocallyCompactSpace (ℕ → { x : ℝ // 0 ≤ x ∧ x ≤ 1 }) := by sorry
