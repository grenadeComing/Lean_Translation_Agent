import Mathlib

open MeasureTheory Filter Set Topology

theorem interval_integral_of_lim_of_intervals {a b : ℝ} {f : ℝ → ℝ}
  (hbounded : ∃ M, ∀ x ∈ Icc a b, |f x| ≤ M)
  {a_n b_n : ℕ → ℝ}
  (h_an_lt : ∀ n, a < a_n n)
  (h_bn_lt : ∀ n, b_n n < b)
  (h_an : Tendsto a_n atTop (nhds a))
  (h_bn : Tendsto b_n atTop (nhds b))
  (h_int : ∀ n, IntervalIntegrable f volume (a_n n) (b_n n)) :
  IntervalIntegrable f volume a b ∧
  Tendsto (fun n => intervalIntegral f (a_n n) (b_n n) volume) atTop (nhds (intervalIntegral f a b volume)) := by sorry
