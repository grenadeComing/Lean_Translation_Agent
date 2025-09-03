import Mathlib

/-- Rudin exercise 1.18(b) for k = 1: if x ∈ ℝ^1 is nonzero, there is no nonzero y ∈ ℝ^1
    with inner product zero. We express vectors as Fin 1 → ℝ and the inner product as
    the finite sum ∑ (i : Fin 1), x i * y i. -/
theorem Rudin_exercise_1_18b (x : Fin 1 → ℝ) (hx : ∃ i, x i ≠ 0) :
  ¬ ∃ y : Fin 1 → ℝ, (∃ j, y j ≠ 0) ∧ (∑ i : Fin 1, x i * y i) = 0 := by
  sorry
