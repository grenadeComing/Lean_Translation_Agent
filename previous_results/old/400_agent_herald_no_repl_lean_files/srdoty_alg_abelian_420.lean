import Mathlib
import Mathlib.Algebra.PowerSeries.Basic

open PowerSeries BigOperators

/-- Let p : ℕ → ℤ be the partition function (p n is the number of integer partitions of n).
    As formal power series over ℤ we have

      ∑_{n=0}^∞ p(n) X^n = ∏_{k=1}^∞ 1 / (1 - X^k).

    This statement is presented here as a theorem schema: the identifier `p` is intended to
    denote the usual partition-counting function. -/
theorem srdoty_partition_generating_function (p : ℕ → ℤ) :
  (∑' n : ℕ, p n * (PowerSeries.X : PowerSeries ℤ) ^ n) =
  ∏' k : ℕ, (1 - (PowerSeries.X : PowerSeries ℤ) ^ k) ⁻¹ := by sorry
