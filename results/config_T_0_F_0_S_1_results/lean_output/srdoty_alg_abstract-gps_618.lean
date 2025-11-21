import Mathlib

/-- The 2×2 real matrix associated to a complex number a + b i: [[a, -b], [b, a]]. -/
def matrix_of_complex (z : ℂ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then z.re
    else if i = 0 ∧ j = 1 then -z.im
    else if i = 1 ∧ j = 0 then z.im
    else z.re

/-- The subset G of 2×2 real matrices of the form [[a, -b], [b, a]]. We express it as the range
    of `matrix_of_complex`. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) := Set.range matrix_of_complex

/-- G is closed under addition, negation, and contains 0, i.e. it is an additive subgroup (hence a
    group under matrix addition). -/
theorem G_is_add_subgroup :
  (∀ x y, x ∈ G → y ∈ G → x + y ∈ G) ∧
  (∀ x, x ∈ G → -x ∈ G) ∧
  (0 : Matrix (Fin 2) (Fin 2) ℝ) ∈ G :=
by
  sorry

/-- There is an additive group isomorphism between (ℂ, +) and G (viewed as a subtype of the matrix
    space). Concretely this is the map z ↦ [[z.re, -z.im], [z.im, z.re]]. -/
theorem complex_add_equiv_G : AddEquiv ℂ (↥G) :=
by
  sorry
