import Mathlib

open Set

/-- Rudin Exercise 1.16(a): In R^k with k ≥ 3, if |x-y| = d > 0 and r > 0 with 2r > d,
    then there are infinitely many z with |z-x| = |z-y| = r. -/
theorem Rudin_exercise_1_16a {k : ℕ} (hk : 3 ≤ k) (x y : EuclideanSpace ℝ (Fin k)) (r : ℝ)
  (hxy : 0 < dist x y) (hr : 0 < r) (h2 : 2 * r > dist x y) :
  Set.Infinite { z : EuclideanSpace ℝ (Fin k) | dist z x = r ∧ dist z y = r } := by
  sorry
