import Mathlib

open Set

theorem jirilebl_ca_ca_6177 {a b : ℝ} {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hfd : DifferentiableOn ℂ f U) (hfnc : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) {α : ℝ → ℂ}
  (hα : DifferentiableOn ℝ α (Icc a b)) (hα' : ∀ t ∈ Icc a b, deriv α t ≠ 0)
  (hα_range : ∀ t ∈ Icc a b, α t ∈ U) :
  StrictMonoOn (fun t => Complex.arg (f (α t))) (Icc a b) ↔
  (∃ θ, ∀ t ∈ Icc a b, Complex.arg (deriv f (α t) * deriv α t) = θ) := by
  sorry
