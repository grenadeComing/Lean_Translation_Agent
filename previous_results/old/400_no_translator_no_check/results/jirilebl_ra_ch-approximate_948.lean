import Mathlib

open Set Filter Topology MeasureTheory

variable {a b : ℝ}

theorem integral_uniform_limit_mul {f : ℕ → ℝ → ℝ} {f_lim g : ℝ → ℝ}
  (hab : a ≤ b) (hg : ContinuousOn g (Set.Icc a b))
  (h_unif : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x ∈ Set.Icc a b, |f n x - f_lim x| ≤ ε) :
  Tendsto (fun n => ∫ x in a..b, (f n x) * g x) atTop (nhds (∫ x in a..b, f_lim x * g x)) := by
  sorry
