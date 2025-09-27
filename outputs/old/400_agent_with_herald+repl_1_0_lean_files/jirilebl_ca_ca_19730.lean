import Mathlib

/-- Let U be an open subset of Complex and f : Complex → Complex be holomorphic at z0.
If f(z0) = c and HasDerivAt f 0 z0, then either f is identically c on U or there exists m ≥ 2,
an open neighborhood V ⊆ U of z0 and a holomorphic g on V with g(z0) ≠ 0 such that
∀ z ∈ V, f z - c = (z - z0) ^ m * g z. -/
theorem jirilebl_ca_ca_19730 {U : Set Complex} {f : Complex → Complex} {z0 c : Complex}
  (hU : IsOpen U) (hz0 : z0 ∈ U) (hf_at : IsHolomorphicAt f z0) (hval : f z0 = c)
  (hderiv : HasDerivAt f 0 z0) :
  (∀ z ∈ U, f z = c) ∨ ∃ (m : ℕ) (V : Set Complex) (g : Complex → Complex),
    2 ≤ m ∧ IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ IsHolomorphicOn g V ∧ g z0 ≠ 0 ∧
    ∀ z ∈ V, f z - c = (z - z0) ^ m * g z := by
  sorry
