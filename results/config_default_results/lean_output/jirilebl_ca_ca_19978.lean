import Mathlib

open scoped BigOperators

/-- For z : ℂ and n : ℕ, the tail of the exponential series is bounded by
    ‖∑_{k=0}^n z^k / k! - exp z‖ ≤ ‖z‖^{n+1} / (n+1)! * exp(‖z‖).
-/
theorem jirilebl_ca_ca_19978 (z : ℂ) (n : ℕ) :
  ‖((Finset.range (n + 1)).sum (fun k => z ^ k / (k.factorial : ℂ)) - Complex.exp z)‖ ≤
    ‖z‖ ^ (n + 1) / ((n + 1).factorial : ℝ) * Real.exp ‖z‖ := by sorry