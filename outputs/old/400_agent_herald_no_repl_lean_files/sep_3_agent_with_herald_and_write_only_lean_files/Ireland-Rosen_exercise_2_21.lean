import Mathlib
open Finset Nat
open scoped ArithmeticFunction

/-- Define $\wedge(n)=\log p$ if $n$ is a power of $p$ and zero otherwise. Prove that $\sum_{d \mid n} \mu(n / d) \log d = \wedge(n)$. -/
theorem sum_moebius_mul_log_eq_self_at {n : ℕ} (hn : n ≠ 0) :
  (∑ d in n.divisors, μ (n / d) * Real.log d) = if n.isPrimePow then Real.log n.minFac else 0 := by sorry
