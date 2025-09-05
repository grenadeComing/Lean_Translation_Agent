import Mathlib

open Complex

/-- Schwarz Lemma for holomorphic functions on the unit disk. -/
theorem schwarz_lemma_of_holomorphic_on_unit_disk {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (ball (0 : ℂ) 1))
  (hmap : ∀ z ∈ ball (0 : ℂ) 1, abs (f z) < 1)
  (h0 : f 0 = 0) : ∀ z ∈ ball (0 : ℂ) 1, abs (f z) ≤ abs z := by sorry
