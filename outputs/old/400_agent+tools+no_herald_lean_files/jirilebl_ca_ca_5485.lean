import Mathlib

/-- Schwarz lemma: If f : 𝔻 → 𝔻 is holomorphic and f(0) = 0 then |f'(0)| ≤ 1. -/
theorem schwarz_lemma {f : ℂ → ℂ}
  (h_maps : ∀ (z : ℂ), Complex.abs z < (1 : ℝ) → Complex.abs (f z) < (1 : ℝ))
  (h0 : f 0 = 0)
  (h_diff : DifferentiableAt ℂ f 0) :
  Complex.abs (deriv f 0) ≤ (1 : ℝ) := by sorry
