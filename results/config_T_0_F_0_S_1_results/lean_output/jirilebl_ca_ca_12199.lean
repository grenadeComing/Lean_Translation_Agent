import Mathlib

/-!
Open mapping theorem for holomorphic functions and local injectivity where the derivative
is nonzero.
-/-

theorem open_mapping_and_local_injectivity {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hconn : IsConnected U) (hhol : IsHolomorphicOn f U) (hnc : ¬IsConstantOn f U) :
  IsOpen (f '' U) ∧ ∀ p ∈ U, (deriv f p ≠ 0) → ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ InjectiveOn f V := by sorry
