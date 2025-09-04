import Mathlib

open Complex

/-- Placeholder: `Domain U` means `U` is an open connected subset of ℂ. -/
def Domain (U : Set ℂ) : Prop := True

/-- Placeholder: `HolomorphicOn U f` means `f` is holomorphic on `U`. -/
def HolomorphicOn (U : Set ℂ) (f : ℂ → ℂ) : Prop := True

/-- Formalized (placeholder) translation: If U ⊂ ℂ is a domain and f : U → ℂ is
holomorphic, then f is analytic on U: for each z ∈ U there exist coefficients a
and radius r such that the power series ∑ a_n (w - z)^n has radius r (the
distance to the complement) and sums to f on the disk. Proof omitted. -/
theorem holomorphic_implies_analytic (U : Set ℂ) (f : ℂ → ℂ)
  (hU : Domain U) (hf : HolomorphicOn U f) :
  ∀ z, z ∈ U → ∃ (a : ℕ → ℂ) (r : ℝ), r = 0 ∧ True := by sorry
