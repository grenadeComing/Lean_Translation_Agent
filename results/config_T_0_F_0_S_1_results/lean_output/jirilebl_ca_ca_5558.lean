import Mathlib

open Metric

theorem schwarz_lemma {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → f z ∈ Metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) :
  abs (deriv f 0) ≤ 1 := by sorry