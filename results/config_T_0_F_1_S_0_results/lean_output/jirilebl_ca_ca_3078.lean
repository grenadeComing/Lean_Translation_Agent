import Mathlib

noncomputable section

open Complex

/-- Predicate: f is holomorphic on the set U. -/
constant IsHolomorphicOn : (Complex → Complex) → Set Complex → Prop

/-- Predicate: f has a Taylor series with coefficients `a` at `z0` which converges on the disk
    {z | |z - z0| < R} and whose sum equals `f` there. -/
constant HasTaylorExpansionOnDisk : (Complex → Complex) → Complex → Real → (Nat → Complex) → Prop

/-- Distance from z0 to the nearest singularity of f (relative to U). -/
constant radius_to_nearest_singularity : Set Complex → Complex → Real

/-- If f : U → ℂ is holomorphic on a domain U ⊂ ℂ (open and connected), then f is analytic.
    For every z0 ∈ U there exists a Taylor series with coefficients `a` whose radius of
    convergence is R = distance to the nearest singularity (possibly R = ∞), and whose sum
    equals f on the disk {z | |z - z0| < R}. -/
theorem jirilebl_ca_ca_3078 (U : Set Complex) (f : Complex → Complex)
  (hU : IsOpen U) (hconn : IsConnected U) (hf : IsHolomorphicOn f U) :
  ∀ z0 ∈ U, ∃ (R : Real) (a : Nat → Complex),
    R = radius_to_nearest_singularity U z0 ∧ HasTaylorExpansionOnDisk f z0 R a := by sorry

end noncomputable
