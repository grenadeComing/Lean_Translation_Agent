import Mathlib

open Complex

/--
If z ∈ ℂ with |z| < 1, then |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
The power series expansion of log(1 - z) gives the first inequality, and comparison with the
geometric series gives the second.
-/
theorem log_one_sub_abs_le_tsum_geometric (z : ℂ) (hz : |z| < 1) :
  |log (1 - z)| ≤ ∑' n : ℕ, (|z| ^ (n + 1) / (n + 1 : ℝ)) ∧ (∑' n : ℕ, (|z| ^ (n + 1) / (n + 1 : ℝ))) ≤ |z| / (1 - |z|) := by sorry