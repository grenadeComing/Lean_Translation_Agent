import Mathlib

/-- Schwarz lemma (unit disk version).
Suppose f : ball (0:ℂ) 1 → ℂ is analytic and maps the unit disk to itself, and f 0 = 0,
then |f'(0)| ≤ 1. -/
theorem schwarz_lemma_disk {f : ℂ → ℂ} (h_analytic : AnalyticOn ℂ f (Metric.ball (0 : ℂ) 1))
  (h_maps : ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → Complex.abs (f z) < 1) (h0 : f 0 = 0) :
  Complex.abs (deriv f 0) ≤ 1 := by sorry
