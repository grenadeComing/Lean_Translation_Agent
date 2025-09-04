import Mathlib

open Set Function

variable {U : Set Complex} {f : Complex → Complex} {p : Complex}

/-- If f is holomorphic on an open set U and f'(p) ≠ 0, then f is a local biholomorphism
around p: there exist open V,W with p ∈ V ⊆ U, f(V) = W, f|_V injective and with a holomorphic inverse. -/
theorem holomorphic_local_inverse_of_nonzero_deriv (hU : IsOpen U) (hf : IsHolomorphicOn f U)
  (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ (V W : Set Complex),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    InjectiveOn f V ∧
    ∃ (g : Complex → Complex), IsHolomorphicOn g W ∧ (∀ x, x ∈ V → g (f x) = x) ∧ (∀ y, y ∈ W → f (g y) = y) := by sorry
