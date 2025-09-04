import Mathlib

open Matrix

/-- gl(n, ℝ) = {A : Matrix (Fin n) (Fin n) Real // det A ≠ 0} -/

def gl (n : ℕ) : Type := { A : Matrix (Fin n) (Fin n) Real // Matrix.det A ≠ 0 }

/-- gl(n, ℝ) is a group under matrix multiplication. Proof omitted. -/
def gl_group (n : ℕ) : Group (gl n) := by
  -- omitted
  sorry
