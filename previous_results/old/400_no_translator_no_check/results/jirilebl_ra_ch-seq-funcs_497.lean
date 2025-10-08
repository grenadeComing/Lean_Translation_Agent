import Mathlib
open BigOperators

/-!
Show that the partial sums s_n(x) = \sum_{k=0}^n x^k do not converge uniformly on (-1,1).
-/

theorem geom_series_not_uniform_on_Ioo : ¬ TendstoUniformlyOn
  (fun (n : ℕ) (x : ℝ) => Finset.sum (Finset.range (n + 1)) (fun k => x ^ k))
  (fun x => 1 / (1 - x)) atTop (Set.Ioo (-1 : ℝ) 1) := by sorry
