import Mathlib

open Set

theorem zero_of_fprime_has_finite_order {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (hfnc : ¬ (∃ c : ℂ, ∀ z ∈ U, f z = c)) {z0 : ℂ} (hz0 : z0 ∈ U) (hder0 : deriv f z0 = 0) :
  ∃ (m : ℕ) (hm : m ≥ 1) (V : Set ℂ) (hV : IsOpen V) (hsub : V ⊆ U) (hz0V : z0 ∈ V) (g : ℂ → ℂ),
    DifferentiableOn ℂ g V ∧ g z0 ≠ 0 ∧ ∀ z ∈ V, deriv f z = (z - z0) ^ m * g z := by sorry
