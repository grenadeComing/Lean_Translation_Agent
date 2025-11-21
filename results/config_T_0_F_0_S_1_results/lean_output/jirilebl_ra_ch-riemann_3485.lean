import Mathlib

open IntervalIntegral Filter

/--
Suppose f : [0,∞) → ℝ is Riemann integrable on every interval [0,M]
and ∫_0^∞ |f| < ∞. Show that ∫_0^∞ f exists iff for every ε > 0
there exists an M such that for all R ≥ M, we have |∫_M^R f| < ε.

This lemma states that for an absolutely (improperly) integrable
Riemann function on [0,∞), the improper integral of f exists iff the
tails ∫_M^R f can be made uniformly small.
-/
theorem riemann_improper_integral_exists_iff_tail_small {f : ℝ → ℝ}
  (h_int : ∀ M, IntervalIntegrable f 0 M)
  (h_abs : ∃ L, Tendsto (fun R => ∫ x in 0..R, |f x|) atTop (𝓝 L)) :
  (∃ I, Tendsto (fun R => ∫ x in 0..R, f x) atTop (𝓝 I)) ↔
    (∀ ε > 0, ∃ M, ∀ R ≥ M, |∫ x in M..R, f x| < ε) := by sorry