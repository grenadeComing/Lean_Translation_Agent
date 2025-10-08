import Mathlib

open Matrix
open Fin

/-- G is the set of 2x2 real matrices of the form [[a, -b], [b, a]] -/
def G : Type := { M : Matrix (Fin 2) (Fin 2) ℝ // M 0 0 = M 1 1 ∧ M 0 1 = - M 1 0 }

/-- G is an additive commutative group (under matrix addition). -/
instance : AddCommGroup G := by sorry

/-- Map a complex number x + i y to the matrix [[x, -y], [y, x]] (as a Matrix). -/
def complex_to_matrix (z : Complex) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => z.re
    | 0, 1 => -z.im
    | 1, 0 => z.im
    | 1, 1 => z.re

/-- Additive group isomorphism between (Complex, +) and G. -/
def complex_add_equiv_G : AddEquiv Complex G := by sorry
