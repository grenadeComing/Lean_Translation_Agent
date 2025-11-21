import Mathlib

/-- The series sum_{k=0}^\infty x^k does not converge uniformly on (-1,1). -/
theorem geom_series_not_uniform_on_Ioo :
  ¬ TendstoUniformlyOn (fun n : ℕ => fun x : ℝ => Finset.sum (Finset.range (n + 1)) (fun k => x ^ k))
    (fun x => 1 / (1 - x)) atTop (Set.Ioo (-1 : ℝ) 1) := by sorry
