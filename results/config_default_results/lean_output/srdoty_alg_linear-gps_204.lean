import Mathlib

open Matrix

variable {α : Type*} [Field α]

/-- Elementary swap matrix that swaps rows i and j when multiplied on the left. -/
def E_swap {n : ℕ} (i j : Fin n) : Matrix (Fin n) (Fin n) α := fun r c =>
  if r = i then (if c = j then (1 : α) else (0 : α))
  else if r = j then (if c = i then (1 : α) else (0 : α))
  else if r = c then (1 : α) else (0 : α)

/-- Elementary scale matrix that multiplies row i by a scalar s. -/
def E_scale {n : ℕ} (i : Fin n) (s : α) : Matrix (Fin n) (Fin n) α := fun r c =>
  if r = c then (if r = i then s else (1 : α)) else (0 : α)

/-- Elementary transvection matrix that adds s times row j to row i. -/
def E_transvection {n : ℕ} (i j : Fin n) (s : α) : Matrix (Fin n) (Fin n) α := fun r c =>
  if r = i then (if c = i then (1 : α) else if c = j then s else (0 : α))
  else if r = c then (1 : α) else (0 : α)

/-- If B is obtained from A by a single elementary row operation, then B = U * A for
    some elementary n×n matrix U of the corresponding type. -/
theorem exists_elementary_matrix_mul {n : ℕ} (hn : 0 < n)
  (A B : Matrix (Fin n) (Fin n) α)
  (h : (∃ (i j : Fin n), i ≠ j ∧ B = (E_swap i j) * A)
       ∨ (∃ (i : Fin n) (s : α), s ≠ (0 : α) ∧ B = (E_scale i s) * A)
       ∨ (∃ (i j : Fin n) (s : α), i ≠ j ∧ B = (E_transvection i j s) * A)) :
  ∃ U : Matrix (Fin n) (Fin n) α,
    (((∃ (i j : Fin n), i ≠ j ∧ U = E_swap i j) ∨ (∃ (i : Fin n) (s : α), s ≠ (0 : α) ∧ U = E_scale i s)
      ∨ (∃ (i j : Fin n) (s : α), i ≠ j ∧ U = E_transvection i j s))) ∧ B = U * A := by sorry
