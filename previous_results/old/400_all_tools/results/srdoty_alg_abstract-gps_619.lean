import Mathlib

open Matrix

/-- The map phi : R × R → M₂(R) sending (a,b) to [[a, -b],[b, a]] -/
def phi (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then a else -b else if j = 0 then b else a

/-- G is the set of matrices of the form [[a,-b],[b,a]] -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | ∃ a b : ℝ, M = phi a b }

/-- G' = G \ {0} -/
def G' : Set (Matrix (Fin 2) (Fin 2) ℝ) := G \ {0}

/-- G' is a group under matrix multiplication (as a Group instance on the subtype). -/
instance group_Gprime : Group ({ M : Matrix (Fin 2) (Fin 2) ℝ // M ∈ G' }) := by sorry
