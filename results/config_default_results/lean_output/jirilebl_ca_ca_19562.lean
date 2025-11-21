import Mathlib

/-!
Let z ∈ ℂ. Show that for all n ∈ ℕ,
  |∑_{k=0}^n z^k/k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
This file states the theorem (no proof).
-/

open BigOperators

theorem exp_partial_sum_tail_bound (z : Complex) (n : Nat) :
  ‖(Finset.sum (Finset.range (n + 1)) fun k => (z ^ k) / (Nat.factorial k : Complex)) - Complex.exp z‖ ≤
    ‖z‖ ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp ‖z‖ := by sorry
