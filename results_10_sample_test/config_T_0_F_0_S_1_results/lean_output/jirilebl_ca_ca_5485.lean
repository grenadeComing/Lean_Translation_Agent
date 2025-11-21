import Mathlib

/-- Schwarz lemma: if f : 𝔻 → 𝔻 is holomorphic and f(0) = 0 then |f'(0)| ≤ 1. -/
theorem schwarz_lemma {f : ℂ → ℂ} (h : HolomorphicOn f (metric.ball (0 : ℂ) 1)) (h0 : f 0 = 0) : |deriv f 0| ≤ 1 := by sorry
