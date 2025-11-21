import Mathlib

/-- For z ∈ ℂ and n ∈ ℕ, the error of truncating the exponential series after n
terms is bounded by |z|^{n+1}/(n+1)! e^{|z|}.
-/
lemma abs_exp_series_error_le (z : ℂ) (n : ℕ) :
  abs (∑ k in Finset.range (n + 1), z ^ k / (k! : ℂ) - Complex.exp z) ≤
    abs z ^ (n + 1) / ((n + 1)! : ℝ) * Real.exp (abs z) := by sorry