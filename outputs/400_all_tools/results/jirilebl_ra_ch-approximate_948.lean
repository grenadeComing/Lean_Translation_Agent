import Mathlib
open scoped Classical
open MeasureTheory NNReal ENNReal Topology
open Set Filter TopologicalSpace

/-- Suppose f_n -> f uniformly on [a,b] and g is continuous on [a,b]. Prove that lim_{n->∞} ∫_a^b f_n * g = ∫_a^b f * g. -/
theorem tendsto_integral_mul_of_tendsto_uniformly_on_Icc {f : ℕ → ℝ → ℝ} {f_lim : ℝ → ℝ} {g : ℝ → ℝ}
    (a b : ℝ) (hg : ContinuousOn g (Icc a b)) (h_tendsto : TendstoUniformlyOn f f_lim atTop (Icc a b)) :
    Tendsto (fun n => ∫ x in a..b, f n x * g x) atTop (𝓝 (∫ x in a..b, f_lim x * g x)) := by sorry
