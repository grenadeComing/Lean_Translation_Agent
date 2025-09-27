import Mathlib
open PowerSeries
open Finset

/-- For a fixed k, the power series whose coefficient of X^r is 1 iff k ∣ r. -/
def support_series (k : ℕ) : PowerSeries ℤ :=
  PowerSeries.mk (fun r => if k ∣ r then (1 : ℤ) else 0)

/-- Partition generating function (coefficient formulation).
    We state that there is a function p : ℕ → ℤ whose n-th value equals the coefficient of X^n
    in the finite product ∏_{k=1}^n support_series k. This finite product equals the usual
    truncation of the Euler product ∏_{k=1}^∞ 1/(1-X^k). -/
theorem partition_generating_function (p : ℕ → ℤ) :
  ∀ n, p n = (PowerSeries.coeff ℤ n) (Finset.prod (Finset.Ico 1 (n + 1)) fun k => support_series k) := by sorry
