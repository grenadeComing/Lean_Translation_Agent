import Mathlib

open Filter

/-- Suppose f : [0,∞) → ℝ is Riemann integrable on every interval [0,M] and
    ∫_0^∞ |f| < ∞. Then ∫_0^∞ f exists iff for every ε > 0 there exists M such that
    for all R ≥ M, |∫_M^R f| < ε. -/
theorem improper_integral_exists_iff_cauchy_tails {f : ℝ → ℝ}
  (h_int : ∀ M, IntervalIntegrable f volume 0 M)
  (h_abs : ∃ L, Tendsto (fun R => intervalIntegral (fun x => |f x|) 0 R volume) atTop (nhds L)) :
  (∃ L, Tendsto (fun R => intervalIntegral f 0 R volume) atTop (nhds L)) ↔
    (∀ ε > 0, ∃ M, ∀ R ≥ M, |intervalIntegral f M R volume| < ε) := by sorry