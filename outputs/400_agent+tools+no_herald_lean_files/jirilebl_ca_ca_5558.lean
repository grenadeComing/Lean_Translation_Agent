import Mathlib

open Complex

theorem schwarz_lemma {f : ℂ → ℂ} (hmap : ∀ z, Complex.abs z < 1 → Complex.abs (f z) < 1) (h0 : f 0 = 0) (hd : DifferentiableAt ℂ f 0) : Complex.abs (deriv f 0) ≤ 1 := by sorry
