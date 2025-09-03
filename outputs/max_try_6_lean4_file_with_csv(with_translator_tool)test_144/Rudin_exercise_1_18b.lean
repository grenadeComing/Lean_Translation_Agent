import Mathlib

/-- Dot product for vectors in R^1 represented as functions Fin 1 → ℝ. -/
def dot_fin1 (x y : Fin 1 → ℝ) : ℝ := x 0 * y 0

/-- Rudin exercise (1.18 b) for k = 1: if x ≠ 0 in R^1 then there does not exist a nonzero y with x · y = 0. -/
theorem Rudin_exercise_1_18b :
  ∀ (x : Fin 1 → ℝ), x ≠ (fun _ => 0 : Fin 1 → ℝ) →
    ¬ ∃ (y : Fin 1 → ℝ), y ≠ (fun _ => 0 : Fin 1 → ℝ) ∧ dot_fin1 x y = 0 := by sorry
