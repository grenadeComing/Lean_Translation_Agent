import Mathlib

/-!
Schwarz lemma: If f : 𝕆 → 𝕆 is holomorphic on the unit disk and f 0 = 0,
then ‖f z‖ ≤ ‖z‖ for all z in the unit disk.
We express holomorphic as `DifferentiableOn ℂ f (Metric.ball (0 : ℂ) (1 : ℝ))`.
-/

theorem schwarz_lemma {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) (1 : ℝ)))
  (hf0 : f 0 = 0) : ∀ z ∈ Metric.ball (0 : ℂ) (1 : ℝ), ‖f z‖ ≤ ‖z‖ := by sorry
