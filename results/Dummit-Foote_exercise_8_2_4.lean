import Mathlib

/-- Let R be an integral domain. If (i) any two nonzero elements a and b in R have a greatest
    common divisor which can be written in the form r a + s b for some r, s in R, and
    (ii) if a₁, a₂, a₃, ... are nonzero elements of R such that a_{i+1} ∣ a_i for all i, then the
    sequence stabilizes up to multiplication by units. Then R is a Principal Ideal Domain. -/
theorem Dummit_Foote_exercise_8_2_4 {R : Type _} [Semiring R] [IsDomain R]
  (h_gcd_lin : ∀ a b : R, a ≠ 0 → b ≠ 0 →
    ∃ d r s : R, (d ∣ a ∧ d ∣ b ∧ ∀ e : R, e ∣ a → e ∣ b → e ∣ d) ∧ d = r * a + s * b)
  (h_asc_stab : ∀ (a : ℕ → R), (∀ i, a (i+1) ∣ a i) →
    ∃ N, ∀ n, n ≥ N → ∃ u : Rˣ, a n = (u : R) * a N) : IsPrincipalIdealRing R := by
  sorry
