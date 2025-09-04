import Mathlib

/-- Schwarz lemma: if f : 𝔻 → 𝔻 is holomorphic (differentiable on the unit disk) and f(0)=0,
then |f z| ≤ |z| for all z in the unit disk. -/
theorem schwarz_lemma {f : ℂ → ℂ}
  (h_diff : DifferentiableOn ℂ f {z : ℂ | Complex.abs z < (1 : ℝ)})
  (h_map : ∀ (z : ℂ), Complex.abs z < (1 : ℝ) → Complex.abs (f z) < (1 : ℝ))
  (h0 : f 0 = 0) : ∀ (z : ℂ), Complex.abs (f z) ≤ Complex.abs z := by sorry
