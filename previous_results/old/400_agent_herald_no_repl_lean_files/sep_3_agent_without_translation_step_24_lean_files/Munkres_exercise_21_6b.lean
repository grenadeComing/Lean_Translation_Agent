import Mathlib

open Set

def interval : Type := { x : ℝ // x ∈ Icc (0 : ℝ) 1 }

def f (n : ℕ) (x : interval) : ℝ := x.val ^ n

theorem not_uniform_convergence :
  ¬ ∃ (g : interval → ℝ),
    ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, ∀ x : interval, abs (f n x - g x) ≤ ε := by
  sorry
