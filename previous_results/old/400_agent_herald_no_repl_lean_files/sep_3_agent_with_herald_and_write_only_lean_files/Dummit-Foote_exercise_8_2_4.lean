import Mathlib

/-!
Let R be an integral domain. Prove that if the following two conditions hold then R is a
Principal Ideal Domain:

(i) any two nonzero elements a and b in R have a greatest common divisor which can be
    written in the form r * a + s * b for some r, s in R, and

(ii) if a_1, a_2, a_3, ... are nonzero elements of R such that a_{i+1} ∣ a_i for all i,
     then there is a positive integer N such that a_n is a unit times a_N for all n ≥ N.
-/

variable {R : Type _} [CommRing R] [IsDomain R]

theorem Dummit_Foote_exercise_8_2_4
  (h1 : ∀ (a b : R), a ≠ 0 → b ≠ 0 → ∃ d r s : R,
    (d ∣ a ∧ d ∣ b ∧ ∀ e : R, e ∣ a → e ∣ b → e ∣ d) ∧ d = r * a + s * b)
  (h2 : ∀ (a : ℕ → R), (∀ i, a (i + 1) ∣ a i) → ∃ N : ℕ, ∀ n, n ≥ N → ∃ u : Rˣ, a n = (u : R) * a N)
  : IsPrincipalIdealRing R := by sorry
