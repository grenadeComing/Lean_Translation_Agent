import Mathlib

open Set

theorem geometric_series_uniform_on_Icc (c : ℝ) (hc1 : 0 ≤ c) (hc2 : c < 1) :
  TendstoUniformlyOn (fun n => fun x => (Finset.range (n+1)).sum fun k => x ^ k)
    (fun x => 1 / (1 - x)) atTop (Icc (-c) c) := by sorry
