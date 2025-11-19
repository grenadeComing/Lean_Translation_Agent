import Mathlib

/-
We state the classical theorem: a holomorphic function on a domain is analytic.

We do not give a proof here. Instead we introduce minimal axioms/predicates
that capture the required notions and then state the theorem in terms of them.
-/

/-- Predicate: `f` is holomorphic on the set `U`. -/
axiom IsHolomorphicOn (f : ℂ → ℂ) (U : Set ℂ) : Prop

/-- Predicate: `f` has a power series expansion at `z0` with coefficients `a` and radius `R`.
    This entails that the power series with coefficients `a` converges to `f` on the open disk
    {z | |z - z0| < R} and that `R` is the radius of convergence of that series. -/
axiom HasPowerSeriesExpansionAt (f : ℂ → ℂ) (z0 : ℂ) (a : ℕ → ℂ) (R : ℝ) : Prop

/-- The distance from `z0` to the nearest point not in `U` (i.e. to the nearest singularity);
    this may be +∞ in the informal statement, but we model it as a real number here. -/
axiom dist_to_nearest_singularity (z0 : ℂ) (U : Set ℂ) : ℝ

/-- Main statement (translation): If `f` is holomorphic on a domain `U ⊆ ℂ`, then `f` is analytic.
    Concretely, for every `z0 ∈ U` there exist power series coefficients `a : ℕ → ℂ` and a radius `R`
    equal to the distance from `z0` to the nearest singularity, such that the power series with
    coefficients `a` has radius `R` and sums to `f` on the open disk of radius `R` centered at `z0`.
-/
theorem holomorphic_on_implies_analytic (U : Set ℂ) (f : ℂ → ℂ)
  (h : IsHolomorphicOn f U) :
  ∀ z0, z0 ∈ U → ∃ (a : ℕ → ℂ) (R : ℝ), R = dist_to_nearest_singularity z0 U ∧ HasPowerSeriesExpansionAt f z0 a R :=
by sorry
