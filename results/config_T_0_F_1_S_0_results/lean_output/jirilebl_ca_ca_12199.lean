import Mathlib

open Function

theorem open_map_and_local_inj_of_holomorphic_nonconstant
  {U : Set ℂ} (U_open : IsOpen U) (U_conn : IsConnected U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) (hnc : ∃ z1 z2 : ℂ, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  IsOpen (f '' U) ∧ (∀ p : ℂ, p ∈ U → deriv f p ≠ 0 → ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y)) := by sorry
