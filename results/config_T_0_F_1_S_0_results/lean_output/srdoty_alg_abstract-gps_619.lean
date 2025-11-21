import Mathlib

open Matrix

/-- The set G of real 2x2 matrices of the form [[a, -b], [b, a]] -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | ∃ a b : ℝ, M 0 0 = a ∧ M 0 1 = -b ∧ M 1 0 = b ∧ M 1 1 = a }

/-- G' = G \ {0} -/
def G' : Set (Matrix (Fin 2) (Fin 2) ℝ) := G \ {0}

/-- Statement: G' is a group under matrix multiplication. We record the group axioms
    (identity, closure, associativity, and existence of inverses) for elements of G'. -/
theorem g_prime_is_group :
  (1 : Matrix (Fin 2) (Fin 2) ℝ) ∈ G' ∧
  (∀ x y, x ∈ G' → y ∈ G' → x * y ∈ G') ∧
  (∀ x y z, x ∈ G' → y ∈ G' → z ∈ G' → (x * y) * z = x * (y * z)) ∧
  (∀ x, x ∈ G' → ∃ y, y ∈ G' ∧ x * y = 1 ∧ y * x = 1) := by sorry
