import Mathlib

/-- Let q ∈ ℕ be a prime with q ≡ 3 (mod 4). Then the quotient ring ℤ[i] /(q) is a field with q^2 elements. -/
theorem Dummit_Foote_exercise_8_3_6b (q : ℕ) (hq : q.Prime) (hmod : q % 4 = 3) :
  IsField (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt)) ∧
  Nonempty (Fintype (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt))) ∧
  (∀ [Fintype (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt))],
    Fintype.card (GaussianInt ⧸ Ideal.span ({(q : GaussianInt)} : Set GaussianInt)) = q * q) := by sorry
