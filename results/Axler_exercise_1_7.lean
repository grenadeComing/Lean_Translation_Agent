import Mathlib

/-- Example: union of the x- and y-axes in R^2.
    This set is nonempty and closed under scalar multiplication,
    but not closed under addition, so it is not a subspace. -/

def U : Set (Real × Real) := { p : Real × Real | p.fst = 0 ∨ p.snd = 0 }

theorem Axler_exercise_1_7 :
  (U ≠ ∅) ∧ (∀ (a : Real) (v : Real × Real), v ∈ U → (a * v.fst, a * v.snd) ∈ U) ∧
  ¬ (∀ u v : Real × Real, u ∈ U → v ∈ U → (u.fst + v.fst, u.snd + v.snd) ∈ U) := by sorry
