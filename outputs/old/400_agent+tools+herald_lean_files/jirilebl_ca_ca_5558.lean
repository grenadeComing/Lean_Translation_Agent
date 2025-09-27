import Mathlib

open Metric

/-- Schwarz lemma: if f : ℂ → ℂ is differentiable on the unit disk, maps the unit disk into itself,
    and f 0 = 0, then |deriv f 0| ≤ 1. -/
theorem schwarz_lemma_unit_disk {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (Metric.ball (0:ℂ) 1))
  (hmap : ∀ z, ‖z‖ < 1 → ‖f z‖ < 1)
  (h0 : f 0 = 0) :
  Complex.abs (deriv f 0) ≤ 1 := by sorry
