import Mathlib

open Metric Set

theorem jirilebl_ca_ca_19730 {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h_nonconst : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w) :
  ∀ (z0 c : ℂ), z0 ∈ U → f z0 = c → DifferentiableAt ℂ f z0 → fderiv ℂ f z0 = 0 →
    (∀ z ∈ U, f z = c) ∨
    ∃ (m : ℕ) (hm : 1 ≤ m) (r : ℝ) (hr : 0 < r),
      Metric.ball z0 r ⊆ U ∧
      ∃ (g : ℂ → ℂ), DifferentiableOn ℂ g (Metric.ball z0 r) ∧ g z0 ≠ 0 ∧
        ∀ z ∈ Metric.ball z0 r, f z - c = (z - z0) ^ m * g z := by sorry
