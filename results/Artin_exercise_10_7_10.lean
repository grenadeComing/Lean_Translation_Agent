import Mathlib

/-- Let R be a commutative ring and M an ideal. If every element of R not in M is a unit,
then M is maximal and it is the unique maximal ideal of R. -/
theorem Artin_exercise_10_7_10 {R : Type _} [CommRing R] (M : Ideal R)
  (h : ∀ x : R, x ∉ M → IsUnit x) :
  Ideal.IsMaximal M ∧ (∀ N : Ideal R, Ideal.IsMaximal N → N = M) := by
  sorry
