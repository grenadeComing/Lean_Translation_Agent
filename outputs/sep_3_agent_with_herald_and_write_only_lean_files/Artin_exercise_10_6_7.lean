import Mathlib

/-- The ring of Gaussian integers as the quotient ℤ[X] / (X^2 + 1). -/
def gaussian_int : Type := (Polynomial Int) ⧸ Ideal.span ({Polynomial.X ^ 2 + 1} : Set (Polynomial Int))

/-- Exercise (Artin 10.6.7): Every nonzero ideal in the ring of Gaussian integers contains a nonzero integer. -/
theorem Artin_exercise_10_6_7 (I : Ideal gaussian_int) (h : I ≠ ⊥) :
  ∃ n : Int, (n : gaussian_int) ∈ I ∧ n ≠ 0 := by sorry
