import Mathlib

open Complex Set

theorem jirilebl_ca_ca_6177 {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hf_nonconst : ¬ IsConstOn f U)
  {a b : ℝ} (hab : a < b) {α : ℝ → ℂ}
  (hα_in : ∀ t ∈ Set.Icc a b, α t ∈ U)
  (hα_diff : DifferentiableOn ℝ α (Set.Icc a b))
  (hα_nz : ∀ t ∈ Set.Icc a b, deriv α t ≠ 0) :
  (strict_mono_on (fun t => Complex.arg (f (α t))) (Set.Icc a b) ∨ strict_anti_on (fun t => Complex.arg (f (α t))) (Set.Icc a b)) ↔
  ∃ θ : ℝ, ∀ t ∈ Set.Icc a b, Complex.arg (deriv f (α t) * deriv α t) = θ := by sorry
