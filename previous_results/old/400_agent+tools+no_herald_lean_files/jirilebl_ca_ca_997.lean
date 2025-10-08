import Mathlib

open Matrix Complex

/-- The 2x2 real matrix representing the complex number a + i b. -/
def M (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℂ :=
  fun i j => if i = (0 : Fin 2) then if j = (0 : Fin 2) then Complex.ofReal a else -Complex.ofReal b
            else if j = (0 : Fin 2) then Complex.ofReal b else Complex.ofReal a

/-- Candidate eigenvectors independent of a,b. -/
def v_plus  : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then (1 : ℂ) else -Complex.I

def v_minus : Fin 2 → ℂ := fun i => if i = (0 : Fin 2) then (1 : ℂ) else Complex.I

theorem complex_number_2x2_eigen (a b : ℝ) :
  (M a b).mulVec v_plus  = (Complex.ofReal a + Complex.ofReal b * Complex.I) • v_plus ∧
  (M a b).mulVec v_minus = (Complex.ofReal a - Complex.ofReal b * Complex.I) • v_minus := by
  sorry
