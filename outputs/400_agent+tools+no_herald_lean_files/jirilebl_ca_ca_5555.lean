import Mathlib

/-- Schwarz lemma: if f : D → D is holomorphic and f 0 = 0, then ‖f z‖ ≤ ‖z‖ for all z in D. -/
theorem schwarz_lemma_unit_disk {f : ℂ → ℂ}
  (hf : AnalyticOn ℂ f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z ∈ Metric.ball (0 : ℂ) 1, ‖f z‖ < 1)
  (h0 : f 0 = 0) :
  ∀ z ∈ Metric.ball (0 : ℂ) 1, ‖f z‖ ≤ ‖z‖ := by sorry
