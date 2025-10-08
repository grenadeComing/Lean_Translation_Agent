import Mathlib

open Filter Set MeasureTheory Topology

lemma improper_integral_exists_iff_tails_small {f : ℝ → ℝ}
  (h_int : ∀ M : ℝ, IntervalIntegrable f volume (0:ℝ) M)
  (h_abs : ∃ L : ℝ, Tendsto (fun R : ℝ => (∫ x in (0:ℝ)..R, |f x|)) atTop (𝓝 L)) :
  (∃ L : ℝ, Tendsto (fun R : ℝ => (∫ x in (0:ℝ)..R, f x)) atTop (𝓝 L)) ↔
  (∀ ε > 0, ∃ M : ℝ, ∀ R : ℝ, R ≥ M → |(∫ x in M..R, f x)| < ε) := by sorry
