import Mathlib

variable (IsDomain : Set Complex → Prop)
variable (HolomorphicOn : Set Complex → (Complex → Complex) → Prop)
variable (HasDerivativeZeroAt : (Complex → Complex) → Complex → Prop)
variable (IsZeroOfOrder : (Complex → Complex) → Complex → ℕ → Prop)
variable (Locally_exactly_m_points : Set Complex → (Complex → Complex) → Complex → Complex → ℕ → Prop)

theorem jirilebl_ca_ca_2718 {U : Set Complex} {f : Complex → Complex} {z0 c : Complex}
  (hU : IsDomain U) (hhol : HolomorphicOn U f) (hnonconst : ¬ (∃ d, ∀ z ∈ U, f z = d))
  (hz0 : f z0 = c) (hd0 : HasDerivativeZeroAt f z0) :
  ( (∀ z ∈ U, f z = c) ∨ (∃ m : ℕ, m ≥ 1 ∧ IsZeroOfOrder (fun z => f z - c) z0 m ∧ Locally_exactly_m_points U f c z0 m) ) := by
  sorry
