import Mathlib

/-!
Schwarz lemma: If f : 𝔻 → 𝔻 is holomorphic and f(0) = 0, then |f'(0)| ≤ 1.
We express holomorphic on the open unit disk as DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1),
and mapping into the unit disk as ∀ z, ‖z‖ < 1 → ‖f z‖ < 1.
-/

theorem schwarz_lemma_disk {f : ℂ → ℂ}
  (hhol : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z, ‖z‖ < 1 → ‖f z‖ < 1)
  (h0 : f 0 = 0) : Complex.abs (deriv f 0) ≤ 1 := by sorry
