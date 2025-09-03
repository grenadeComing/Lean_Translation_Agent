import Mathlib

/-
Let f : ℝ → ℝ be an infinitely differentiable function satisfying f(0)=0, f(1)=1, and f(x) ≥ 0 for all x ∈ ℝ.
Show that there exist a positive integer n and a real number x such that f^{(n)}(x) < 0.

This file states the theorem; the proof is omitted (ending with `:= by sorry`).
-/

namespace Putnam_exercise_2018_a5

open Real

noncomputable def nth_derivative (f : ℝ → ℝ) : ℕ → ℝ → ℝ
| 0     => f
| n + 1 => fun x => deriv (nth_derivative f n) x

theorem putnam_exercise_2018_a5 (f : ℝ → ℝ) (hf : ContDiff ℝ ⊤ f)
  (h0 : f 0 = 0) (h1 : f 1 = 1) (hnonneg : ∀ x, 0 ≤ f x) :
  ∃ (n : ℕ) (x : ℝ), 0 < n ∧ (nth_derivative f n) x < 0 := by sorry

end Putnam_exercise_2018_a5
