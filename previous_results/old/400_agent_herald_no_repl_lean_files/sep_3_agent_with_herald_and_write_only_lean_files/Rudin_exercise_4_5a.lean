/-!
Exercise 4.5(a) (Rudin). If f is a real continuous function defined on a closed set E ⊂ ℝ,
then there exists a continuous real function g on ℝ such that g(x) = f(x) for all x ∈ E.
-/

import Mathlib

open Set

theorem Rudin_exercise_4_5a {E : Set ℝ} (hE : IsClosed E) (f : E → ℝ) (hf : Continuous f) :
  ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x (hx : x ∈ E), g x = f ⟨x, hx⟩ := by
  sorry
