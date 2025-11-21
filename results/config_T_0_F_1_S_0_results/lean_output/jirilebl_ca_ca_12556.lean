import Mathlib

open Complex

theorem jirilebl_ca_ca_12556 (f : ℂ → ℂ)
  (h_holo : ∃ r : ℝ, 1 < r ∧ ∀ z : ℂ, Norm.norm z ≤ r → DifferentiableAt ℂ f z)
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, Norm.norm z ≤ 1 →
    Norm.norm (1 - Finset.sum (Finset.range (m+1)) (fun k => (iteratedDeriv k f 0 / (↑k.factorial * f 0)) * z ^ k)) ≤ C * (Norm.norm z) ^ (m+1) := by sorry
