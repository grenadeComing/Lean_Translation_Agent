import Mathlib

open Set Filter

variable {a b : ℝ}

theorem uniform_on_interval_integral_mul
  {f : ℕ → ℝ → ℝ} {f_lim : ℝ → ℝ} {g : ℝ → ℝ}
  (hab : a ≤ b)
  (hg : ContinuousOn g (Icc a b))
  (h_uniform : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x ∈ Icc a b, |f n x - f_lim x| ≤ ε) :
  Tendsto (fun n => ∫ x in a..b, (f n x) * g x) atTop (nhds (∫ x in a..b, f_lim x * g x)) := by sorry
