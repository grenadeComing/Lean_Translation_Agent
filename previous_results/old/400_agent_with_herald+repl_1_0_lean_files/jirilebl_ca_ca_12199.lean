import Mathlib

/-- Open mapping theorem (translated statement). -/
theorem open_mapping_theorem {U : Set ℂ} (hU : IsOpen U) (hUconn : Prop)
  {f : ℂ → ℂ} (hf : Prop) (hfnc : Prop) : IsOpen (f '' U) := by sorry

/-- Local injectivity at points with nonzero derivative (translated statement). -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : Prop) (hp : p ∈ U) (hder : Prop) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
