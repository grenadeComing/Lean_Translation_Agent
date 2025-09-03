import Mathlib

/-!
Problem (Rudin, Principles of Mathematical Analysis, exercise 1.19).
Suppose a, b ∈ ℝ^k. Find c ∈ ℝ^k and r > 0 such that |x - a| = 2 |x - b|
iff |x - c| = r. Prove that 3c = 4b - a and 3r = 2 |b - a|.
-/

open Mathlib

variable {k : ℕ} (a b x : Fin k → ℝ)

-- We model ℝ^k as `Fin k → ℝ` (Euclidean space). We use `EuclideanGeometry` lemmas from mathlib4.

theorem Rudin_exercise_1_19 :
  ∃ (c : Fin k → ℝ) (r : ℝ), r > 0 ∧ (∀ x, dist x a = 2 * dist x b ↔ dist x c = r) := by sorry

-- The values of c and r asserted in the exercise:
lemma Rudin_exercise_1_19_values (c : Fin k → ℝ) (r : ℝ) :
  (3 : ℝ) • c = (4 : ℝ) • b - a ∧ 3 * r = 2 * dist b a := by sorry
