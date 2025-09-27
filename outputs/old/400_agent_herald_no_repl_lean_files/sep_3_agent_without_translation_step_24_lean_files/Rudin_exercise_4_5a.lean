import Mathlib

/-!
# Rudin exercise 4.5(a)

If f is a real continuous function defined on a closed set E ⊂ ℝ,
prove that there exist continuous real functions g on ℝ such that g(x)=f(x)
for all x ∈ E.
-/

theorem Rudin_exercise_4_5a {E : Set ℝ} (hE : IsClosed E) (f : E → ℝ) (hf : Continuous f) :
  ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x : E, g (x : ℝ) = f x := by sorry
