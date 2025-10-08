import Mathlib

/-
Exercise: Prove that convergence of {s_n} implies convergence of {|s_n|}.
If s : ℕ → ℝ and s_n → L (ε-N definition), then |s_n| → |L|.
-/

theorem Rudin_exercise_3_1a {s : ℕ → ℝ} {L : ℝ}
  (h : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → abs (s n - L) < ε) :
  (∀ ε > 0, ∃ N, ∀ n, n ≥ N → abs (abs (s n) - abs L) < ε) := by sorry
