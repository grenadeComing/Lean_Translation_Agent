import Mathlib

open Function

/-- Let R be an integral domain. If (i) any two nonzero elements a and b have a greatest
common divisor which can be written as r*a + s*b for some r,s in R, and (ii) whenever
a₁, a₂, a₃, ... are nonzero elements with a_{i+1} ∣ a_i for all i, the sequence stabilizes
up to multiplication by a unit, then R is a principal ideal domain. -/
theorem Dummit_Foote_exercise_8_2_4 {R : Type _} [Semiring R] [IsDomain R]
  (h_gcd : ∀ a b : R, a ≠ 0 → b ≠ 0 → ∃ d : R,
    d ∣ a ∧ d ∣ b ∧ (∀ e, e ∣ a → e ∣ b → e ∣ d) ∧ (∃ r s : R, d = r * a + s * b))
  (h_stab : ∀ (a : ℕ → R), (∀ i, a (i+1) ∣ a i) → ∃ N, ∀ n, n ≥ N → ∃ u : R, IsUnit u ∧ a n = u * a N) :
  IsPrincipalIdealRing R := by sorry
