import Mathlib

/--
A translation of the statement:
Suppose f: [0, ∞) → ℝ is Riemann integrable on every [0, M] and ∫_0^∞ |f| < ∞. Then ∫_0^∞ f exists iff for every ε > 0 there exists M such that for all R ≥ M, |∫_M^R f| < ε.

This Lean file only contains the formal statement translated into Lean and a placeholder proof (sorry).
-/

theorem riemann_improper_exists_iff_tail
  (f : ℝ → ℝ)
  (hR : ∀ M : ℝ≥0, RiemannIntegrableOn f (Icc (0:ℝ) (M:ℝ)))) :
  (∃ a : ℝ, Tendsto (fun M : ℝ≥0 => ∫ x in (0:ℝ)..(M:ℝ), f x) atTop (𝓝 a)) ↔
  (∀ ε > 0, ∃ M : ℝ≥0, ∀ {R : ℝ≥0}, M ≤ R → |∫ x in (M:ℝ)..(R:ℝ), f x| < ε) := by
  sorry
