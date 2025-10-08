import Mathlib

variable {R : Type _} [Field R]
variable {n : Nat}

/-- The sign matrix S with S_{i,j} = (-1)^{i+j}. -/
def S : Matrix (Fin n) (Fin n) R := fun i j =>
  if (i.val + j.val) % 2 = 0 then (1 : R) else (-1 : R)
