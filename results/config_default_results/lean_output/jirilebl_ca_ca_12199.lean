import Mathlib

/-- Suppose U ⊆ ℂ is open and connected, and suppose f : U → ℂ is holomorphic and nonconstant.
    Then f(U) is open, and f is locally injective at all points where f'(p) ≠ 0. -/
theorem open_map_and_local_injective_of_holomorphic_nonconstant
  {U : Set ℂ} (hU : IsOpen U) (hconn : IsConnected U)
  {f : ℂ → ℂ} (hdiff : DifferentiableOn ℂ f U) (hne : ¬ ∃ c : ℂ, ∀ x ∈ U, f x = c) :
  IsOpen (f '' U) ∧ ∀ p ∈ U, deriv f p ≠ 0 → ∃ V, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
