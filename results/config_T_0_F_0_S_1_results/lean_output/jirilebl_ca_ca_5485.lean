import Mathlib

open Metric

theorem schwarz_lemma {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f (ball (0 : ℂ) 1))
  (hmap : ∀ z ∈ ball (0 : ℂ) 1, f z ∈ ball (0 : ℂ) 1)
  (h0 : f 0 = 0) : ‖fderiv ℂ f 0‖ ≤ 1 := by sorry