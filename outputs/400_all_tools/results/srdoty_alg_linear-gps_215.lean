import Mathlib

/- Elementary matrices over ℝ for n × n matrices. -/

/-- Swap rows i and j. -/
def row_swap (n : ℕ) (i j : Fin n) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if c = j then (1 : ℝ) else 0
  else if r = j then if c = i then (1 : ℝ) else 0
  else if c = r then (1 : ℝ) else 0

/-- Multiply row i by a nonzero scalar a. -/
def row_scale (n : ℕ) (i : Fin n) (a : ℝ) (ha : a ≠ 0) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if c = r then a else 0
  else if c = r then (1 : ℝ) else 0

/-- Add a times row j to row i (i ≠ j). -/
def row_add (n : ℕ) (i j : Fin n) (a : ℝ) (h : i ≠ j) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if c = j then a else if c = r then (1 : ℝ) else 0
  else if c = r then (1 : ℝ) else 0

/-- Predicate saying a matrix is an elementary matrix (one elementary row operation on I). -/
inductive IsElementaryMatrix (n : ℕ) : Matrix (Fin n) (Fin n) ℝ → Prop
| swap (i j : Fin n) : IsElementaryMatrix n (row_swap n i j)
| scale (i : Fin n) (a : ℝ) (ha : a ≠ 0) : IsElementaryMatrix n (row_scale n i a ha)
| add (i j : Fin n) (a : ℝ) (h : i ≠ j) : IsElementaryMatrix n (row_add n i j a h)

/-- Any nonsingular n×n real matrix A can be expressed as a product of elementary matrices. -/
theorem exists_list_of_det_ne_zero {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (h : A.det ≠ 0) :
  ∃ l : List (Matrix (Fin n) (Fin n) ℝ), (∀ B ∈ l, IsElementaryMatrix n B) ∧ (List.foldr (fun x y => x * y) (1 : Matrix (Fin n) (Fin n) ℝ) l) = A := by sorry
