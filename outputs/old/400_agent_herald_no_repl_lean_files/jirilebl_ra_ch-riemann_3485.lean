import Mathlib

open IntervalIntegral MeasureTheory Filter Set

/--
Suppose f : [0,∞) → ℝ is Riemann integrable on every interval [0,M] and ∫_0^∞ |f| < ∞.
Show that ∫_0^∞ f exists iff for every ε > 0 there exists M such that for all R ≥ M,
|∫_M^R f| < ε.
-/
theorem improper_integral_exists_iff_tails_small {f : ℝ → ℝ}
  (hRint : ∀ M, IntervalIntegrable f 0 M)
  (h_abs_int : IntegrableOn (fun x => |f x|) (Ici (0 : ℝ))) :
  (∃ L, Tendsto (fun R => ∫ x in 0..R, f x) atTop (nhds L)) ↔
  ∀ ε > 0, ∃ M, ∀ R ≥ M, |∫ x in M..R, f x| < ε := by sorry
