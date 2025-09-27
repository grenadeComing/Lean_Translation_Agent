import Mathlib

/-!
Exercise: Suppose f : ℝ → ℝ has the intermediate value property: if f(a) < c < f(b)
then f(x) = c for some x between a and b. Suppose also, for every rational r, the
set {x | f(x) = r} is closed. Prove that f is continuous.
-/

open Set

theorem rudin_exercise_4_19 (f : ℝ → ℝ)
  (ivp : ∀ a b c : ℝ, (f a < c ∧ c < f b) ∨ (f b < c ∧ c < f a) → ∃ x, min a b < x ∧ x < max a b ∧ f x = c)
  (preimage_closed : ∀ r : ℚ, IsClosed ({x : ℝ | f x = (r : ℝ)})) :
  Continuous (f : ℝ → ℝ) := by sorry
