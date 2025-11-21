import Mathlib

/-- Schwarz lemma: If f : 𝔻 → 𝔻 is holomorphic and f 0 = 0, then |f z| ≤ |z| for all z in 𝔻. -/
theorem schwarz_lemma {f : ℂ → ℂ}
  (hmap : ∀ z ∈ Metric.ball (0 : ℂ) 1, f z ∈ Metric.ball (0 : ℂ) 1)
  (hf : IsHolomorphicOn f (Metric.ball (0 : ℂ) 1))
  (h0 : f 0 = 0) :
  ∀ z ∈ Metric.ball (0 : ℂ) 1, abs (f z) ≤ abs z := by sorry