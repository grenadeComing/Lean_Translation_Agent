import Mathlib

open scoped Classical
open MeasureTheory Metric Set Filter TopologicalSpace
open scoped Classical Topology Filter ENNReal Interval NNReal
open Asymptotics

/-- Let f_n : [a,b] → ℝ be Riemann integrable and suppose f_n → f uniformly on [a,b].
    Then f is Riemann integrable and ∫_a^b f = lim_{n→∞} ∫_a^b f_n. -/
theorem riemann_integrable_of_tendsto_uniformly {a b : ℝ} (h : a < b) {f : ℕ → ℝ → ℝ} {f_lim : ℝ → ℝ}
    (h_int : ∀ n, Riemann.integrable_on (f n) (Icc a b))
    (h_unif : TendstoUniformlyOn (fun n x => f n x) atTop f_lim (Icc a b)) :
    Riemann.integrable_on f_lim (Icc a b) ∧
      Tendsto (fun n => ∫ (x : ℝ) in a..b, f n x) atTop (𝓝 (∫ (x : ℝ) in a..b, f_lim x)) := by sorry
