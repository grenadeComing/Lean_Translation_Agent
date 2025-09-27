import Mathlib

/-- If R is a commutative ring and a ∈ R, let L(a) = {x ∈ R | x * a = 0}.
    Prove that L(a) is an ideal of R by showing 0 ∈ L(a), closure under addition,
    and closure under multiplication by arbitrary elements of R. -/
theorem Herstein_exercise_4_3_1 {R : Type*} [CommRing R] (a : R) :
  (0 : R) ∈ {x : R | x * a = 0} ∧
  (∀ x y, x ∈ {x : R | x * a = 0} → y ∈ {x : R | x * a = 0} → x + y ∈ {x : R | x * a = 0}) ∧
  (∀ r x, x ∈ {x : R | x * a = 0} → r * x ∈ {x : R | x * a = 0}) := by
  -- proof omitted
  sorry
