import Mathlib

/-!
Schwarz lemma: If f : ℂ → ℂ is holomorphic on the open unit disk and maps the disk
into itself, and f(0) = 0, then |f(z)| ≤ |z| for all z in the open unit disk.
-/

open Complex Metric

theorem schwarz_lemma {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → f z ∈ Metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) :
  ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → Complex.abs (f z) ≤ Complex.abs z := by sorry
