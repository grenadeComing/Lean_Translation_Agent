import Mathlib

open Matrix

/-- The 2x2 real matrix corresponding to a + b i in the complex embedding. -/
def form_mat (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => a
    | 0, 1 => -b
    | 1, 0 => b
    | 1, 1 => a

/-- The subset G of all matrices of the form [[a, -b], [b, a]]. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | ∃ a b : ℝ, M = form_mat a b }

/-- G' is G with the zero matrix removed. -/
def G' : Set (Matrix (Fin 2) (Fin 2) ℝ) := G \ ({0} : Set _)

/-- The statement: the subtype of matrices in G' is a group under matrix multiplication. -/
theorem G'_is_group : Group { M : Matrix (Fin 2) (Fin 2) ℝ // M ∈ G' } := by sorry