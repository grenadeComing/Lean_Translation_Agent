import Mathlib

/-- Rudin, Ex. 4.5(a): If f is a real continuous function defined on a closed set E ⊂ ℝ,
there exists a continuous real function g on ℝ such that g(x) = f(x) for all x ∈ E. -/
theorem rudin_exercise_4_5a {E : Set ℝ} (hE : IsClosed E) (f : {x // x ∈ E} → ℝ) (hf : Continuous f) :
  ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x : {x // x ∈ E}, g x.val = f x := by sorry
