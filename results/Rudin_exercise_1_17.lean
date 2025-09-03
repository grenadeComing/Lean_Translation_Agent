import Mathlib

/-- Rudin exercise 1.17: For x,y in R^k, show that |x+y|^2 + |x-y|^2 = 2|x|^2 + 2|y|^2. -/
theorem Rudin_exercise_1_17 {k : Nat} (x y : Fin k → ℝ) :
  (Finset.univ.sum fun i => (x i + y i) ^ 2) + (Finset.univ.sum fun i => (x i - y i) ^ 2) =
    2 * (Finset.univ.sum fun i => x i ^ 2) + 2 * (Finset.univ.sum fun i => y i ^ 2) := by
  sorry
