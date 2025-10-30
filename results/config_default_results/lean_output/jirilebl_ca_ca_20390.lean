import Mathlib

lemma exp_bound_tac (z : ℂ) (n : ℕ) :
  ‖(∑ k in range (n + 1), z ^ k / (k! : ℂ)) - Complex.exp z‖ ≤
    (‖z‖) ^ (n + 1) / ((n + 1)! : ℝ) * Real.exp (‖z‖) := by
  -- placeholder
  sorry
