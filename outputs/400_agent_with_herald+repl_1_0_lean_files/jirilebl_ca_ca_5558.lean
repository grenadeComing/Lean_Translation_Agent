import Mathlib

/-- Schwarz lemma: if f : ℂ → ℂ is holomorphic on the unit disk, f(0)=0 and |f(z)| ≤ 1 on the disk,
then |f'(0)| ≤ 1. We state a version assuming the derivative at 0 exists (HasDerivAt). -/
theorem schwarz_lemma (f : ℂ → ℂ) {f'0 : ℂ} (h_deriv : HasDerivAt f f'0 (0 : ℂ))
  (h_map : ∀ z, Complex.abs z < 1 → Complex.abs (f z) ≤ 1) (h0 : f 0 = 0) :
  Complex.abs f'0 ≤ 1 := by sorry
