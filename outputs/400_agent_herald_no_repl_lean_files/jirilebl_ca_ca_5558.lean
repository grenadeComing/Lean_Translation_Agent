import Mathlib

open Complex

theorem schwarz_lemma {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f { z | |z| < 1 })
  (hmap : ∀ z, |z| < 1 → |f z| < 1)
  (h0 : f 0 = 0) : |deriv f 0| ≤ 1 := by sorry
