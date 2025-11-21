import Mathlib

theorem holomorphic_zero_of_critical_point {U : Set ℂ} (hU_open : IsOpen U) (hU_conn : IsConnected U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0U : z0 ∈ U) {c : ℂ} (hc : f z0 = c)
  (hder : deriv f z0 = 0) :
  (∀ z ∈ U, f z = c) ∨
  ∃ (m : ℕ) (V : Set ℂ) (g : ℂ → ℂ),
    0 < m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ g z0 ≠ 0 ∧ (∀ z, z ∈ V → f z - c = (z - z0) ^ m * g z) := by sorry
