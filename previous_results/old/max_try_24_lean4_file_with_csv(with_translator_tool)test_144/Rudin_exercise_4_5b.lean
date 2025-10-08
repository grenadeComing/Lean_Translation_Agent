import Mathlib

open Set

/-- A discrete set accumulating only at 0: ±1/(n+1) for n : ℕ. -/
def E : Set ℝ := { x : ℝ | ∃ n : ℕ, x = 1 / (n + 1) ∨ x = -1 / (n + 1) }

/-- Define f to be 1/x on nonzero points, and set f(0) = 0 to make it a total function ℝ → ℝ. -/
noncomputable def f : ℝ → ℝ := fun x => if x = 0 then 0 else 1 / x

/-- There exist a set E and a function f continuous on E which does not admit a continuous extension to ℝ. -/
theorem Rudin_exercise_4_5b :
  ContinuousOn f E ∧ ¬ ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x ∈ E, g x = f x := by sorry
