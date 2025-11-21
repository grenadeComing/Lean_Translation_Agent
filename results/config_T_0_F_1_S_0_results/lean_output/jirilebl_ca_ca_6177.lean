import Mathlib

open Set

theorem jirilebl_ca_ca_6177 (a b : ℝ) {U : Set ℂ} (hU : IsOpen U)
  (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) (hfnc : ∃ z w, z ∈ U ∧ w ∈ U ∧ f z ≠ f w)
  (α : ℝ → ℂ) (hα : DifferentiableOn ℝ α (Icc a b)) (hα_range : ∀ t ∈ Icc a b, α t ∈ U)
  (hα' : ∀ t ∈ Icc a b, deriv α t ≠ 0) :
  StrictMonoOn (fun t => Complex.arg (f (α t))) (Icc a b) ↔
    ∃ c : ℝ, ∀ t ∈ Icc a b, Complex.arg (deriv f (α t) * deriv α t) = c := by sorry