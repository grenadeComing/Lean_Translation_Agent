import Mathlib

open BigOperators Filter Set

/-- The geometric series of partial sums s_n(x) = ∑_{k=0}^n x^k does not converge uniformly on (-1,1). -/
theorem geometric_series_not_uniform_on_Ioo :
  ¬ TendstoUniformlyOn (fun n => fun x => ∑ k in Finset.range (n + 1), x ^ k)
    (fun x => 1 / (1 - x)) atTop (Ioo (-1 : ℝ) 1) := by sorry
