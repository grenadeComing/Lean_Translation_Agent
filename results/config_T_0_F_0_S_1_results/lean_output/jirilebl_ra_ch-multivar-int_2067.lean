import Mathlib

open Set

variable (n : ℕ)

/-- Euclidean space R^n as Fin n → ℝ. -/
def Rn := Fin n → ℝ

/-- Predicate saying that a set is an open rectangle. This is a placeholder for the usual
    product of open intervals in R^n. -/
variable (is_open_rectangle : Set Rn → Prop)

/-- Volume (Lebesgue) of an open rectangle. Placeholder returning an extended nonnegative real. -/
variable (V : Set Rn → ENNReal)

/-- Outer measure defined by infimum over countable covers by open rectangles indexed by ℕ. -/
def m_star (S : Set Rn) : ENNReal :=
  Inf { r : ENNReal | ∃ (f : ℕ → Set Rn), (∀ j, is_open_rectangle (f j)) ∧ S ⊆ ⋃ j, f j ∧ r = ∑' j, V (f j) }

/-- Outer measure defined by infimum over covers by open rectangles indexed by any countable type.
    This allows finite or countable index sets (finite types are countable). -/
def mu_star (S : Set Rn) : ENNReal :=
  Inf { r : ENNReal |
    ∃ (I : Type) (cI : Countable I) (f : I → Set Rn),
      (∀ j, is_open_rectangle (f j)) ∧ S ⊆ ⋃ j, f j ∧ r = ∑' j, V (f j) }

/-- The two definitions agree for every subset S ⊆ R^n. -/
theorem mu_star_eq_m_star (S : Set Rn) : mu_star is_open_rectangle V S = m_star is_open_rectangle V S := by sorry
