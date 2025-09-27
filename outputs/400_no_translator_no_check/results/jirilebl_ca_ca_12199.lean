import Mathlib

open Set

variable {U : Set Complex} {f : Complex → Complex}

/-- Suppose U ⊆ ℂ is open and connected, and f : U → ℂ is holomorphic and nonconstant.
    Then f(U) is open, and f is locally injective at all points where f'(p) ≠ 0. -/
theorem open_map_and_local_injective_of_holomorphic (hU : IsOpen U) (hconn : IsConnected U)
  (hd : DifferentiableOn ℂ f U) (h_nonconst : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  IsOpen (f '' U) ∧ ∀ p ∈ U, deriv f p ≠ 0 → ∃ V, IsOpen V ∧ p ∈ V ∧ InjOn f V := by
  sorry
