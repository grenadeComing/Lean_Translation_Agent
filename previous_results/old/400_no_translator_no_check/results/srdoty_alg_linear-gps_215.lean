import Mathlib

open Matrix

/-- Elementary matrices for row operations on `Fin n`-indexed matrices over `Real`.
We define three kinds: row swap, row scaling, and row addition (shear).
This is just a formalization of the notion of an elementary matrix; we do not prove
that these generate GL(n, ℝ) here. -/

variable {n : ℕ}

def swap_matrix (i j : Fin n) : Matrix (Fin n) (Fin n) Real :=
  fun r c =>
    if r = i then
      if c = j then 1 else if r = j then if c = i then 1 else 0 else 0
    else if r = j then if c = i then 1 else if r = c then 1 else 0
    else if r = c then 1 else 0

def scale_matrix (i : Fin n) (a : Real) : Matrix (Fin n) (Fin n) Real :=
  fun r c => if r = i then if r = c then a else 0 else if r = c then 1 else 0

def shear_matrix (i j : Fin n) (a : Real) : Matrix (Fin n) (Fin n) Real :=
  fun r c => if r = i then if c = j then a else if r = c then 1 else 0 else if r = c then 1 else 0

/-- A predicate saying a matrix is one elementary row-operation matrix. -/
inductive is_elementary_matrix : Matrix (Fin n) (Fin n) Real -> Prop
| swap  (i j : Fin n) : is_elementary_matrix (swap_matrix i j)
| scale (i : Fin n) (a : Real) (ha : a ≠ 0) : is_elementary_matrix (scale_matrix i a)
| shear (i j : Fin n) (a : Real) (h : i ≠ j) : is_elementary_matrix (shear_matrix i j a)

/-- Any invertible n×n real matrix can be written as a product of elementary matrices. -/
theorem invertible_is_product_of_elementary (A : Matrix (Fin n) (Fin n) Real) (hA : IsUnit A) :
  ∃ (E : List (Matrix (Fin n) (Fin n) Real)), (∀ M ∈ E, is_elementary_matrix M) ∧ A = List.foldr (fun x y => x * y) 1 E := by sorry
