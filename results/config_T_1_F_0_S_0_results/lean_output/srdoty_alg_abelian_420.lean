import Mathlib

/-- The generating function for the number p(n) of partitions of n is
    \sum_{n=0}^{\infty} p(n) x^{n} = \prod_{k=1}^{\infty} \frac{1}{1 - x^{k}}. -/
theorem partitions_generating_function :
  ∑' n : ℕ, p n * x ^ n = ∏' k : ℕ, 1 / (1 - x ^ k) := by sorry
