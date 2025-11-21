import Mathlib

open Filter Topology

/-- Suppose f : [0,\infty) → ℝ is Riemann integrable on every interval [0,M] and
    ∫_0^∞ |f| < ∞. Then the improper integral ∫_0^∞ f exists iff for every ε > 0
    there exists M such that for all R ≥ M, |∫_M^R f| < ε. -/
theorem improper_riemann_integral_exists_iff_tails_small {f : ℝ → ℝ} :
  (∀ M, 0 ≤ M → IntervalIntegrable f volume (0 : ℝ) M) →
  MeasureTheory.integrable_on (fun x => |f x|) (Ici (0 : ℝ)) volume →
  (∃ L, Tendsto (fun R : ℝ => ∫ x in 0..R, f x) atTop (nhds L)) ↔
  (∀ ε : ℝ, ε > 0 → ∃ M, ∀ R, M ≤ R → |∫ x in M..R, f x| < ε) := by sorry