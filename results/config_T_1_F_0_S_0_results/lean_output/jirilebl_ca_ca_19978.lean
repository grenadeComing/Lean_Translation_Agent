import Mathlib

open Complex

/-- Let z ∈ ℂ. For all n ∈ ℕ, the remainder of the exponential series satisfies
    |∑_{k=0}^n z^k / k! - exp z| ≤ |z|^{n+1} / (n+1)! * exp |z|.
-/
lemma exp_series_remainder_bound (z : ℂ) (n : ℕ) :
  |∑ k in Finset.range (n + 1), z ^ k / (k! : ℂ) - exp z| ≤ |z| ^ (n + 1) / ((n + 1)! : ℝ) * exp |z| := by sorry