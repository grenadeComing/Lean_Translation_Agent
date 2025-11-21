import Mathlib

open Complex

theorem jirilebl_ca_ca_2718 {U : Set ℂ} {f : ℂ → ℂ} {z0 c : ℂ}
  (hU_open : IsOpen U) (hU_conn : IsConnected U) (hf : IsHolomorphicOn f U)
  (hz0 : z0 ∈ U) (hfz0 : f z0 = c) (h_nonconst : ∃ z : ℂ, z ∈ U ∧ f z ≠ c)
  (hder0 : HasDerivAt f (0 : ℂ) z0) :
  (∀ z ∈ U, f z = c) ∨
  (∃ (m : ℕ) (hm : 1 ≤ m) (V : Set ℂ) (hV_open : IsOpen V) (hz0V : z0 ∈ V) (hVsub : V ⊆ U)
    (g : ℂ → ℂ) (hg : IsHolomorphicOn g V) (hg_ne : ∀ z ∈ V, g z ≠ 0),
    (∀ z ∈ V, f z - c = (z - z0) ^ m * g z) ∧ (f ⁻¹' {c} ∩ V = {z0}) ) := by sorry