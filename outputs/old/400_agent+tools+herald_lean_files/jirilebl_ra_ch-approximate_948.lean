import Mathlib
open MeasureTheory Set Filter Topology

variable {a b : ℝ} {f : ℕ → ℝ → ℝ} {f_lim g : ℝ → ℝ}

/-- If f_n -> f uniformly on [a,b] and g is continuous on [a,b], then
    lim_{n->∞} ∫_a^b f_n g = ∫_a^b f g. -/
theorem tendsto_intervalIntegral_of_uniform_on (h : TendstoUniformlyOn (fun n => f n) f_lim atTop (Set.Icc a b))
  (hg : ContinuousOn g (Set.Icc a b)) :
  Tendsto (fun n => intervalIntegral (fun x => f n x * g x) a b) atTop (𝓝 (intervalIntegral (fun x => f_lim x * g x) a b)) := by sorry
