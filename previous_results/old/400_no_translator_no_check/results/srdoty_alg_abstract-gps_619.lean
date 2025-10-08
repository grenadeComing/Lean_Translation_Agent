import Mathlib

structure Mat2 where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ

namespace Mat2

def mul (M N : Mat2) : Mat2 :=
  { a := M.a * N.a + M.b * N.c,
    b := M.a * N.b + M.b * N.d,
    c := M.c * N.a + M.d * N.c,
    d := M.c * N.b + M.d * N.d }

instance : HMul Mat2 Mat2 Mat2 := ⟨mul⟩

def zeroM : Mat2 := { a := 0, b := 0, c := 0, d := 0 }

def oneM : Mat2 := { a := 1, b := 0, c := 0, d := 1 }

/-- Matrices of the form [[a, -b], [b, a]] -/
def G_set : Set Mat2 := { M | M.a = M.d ∧ M.b = - M.c }

/-- Remove the zero matrix -/
def G'_set : Set Mat2 := G_set \ { zeroM }

end Mat2

open Mat2

theorem srdoty_alg_abstract_gps_619 :
  (∀ A B : Mat2, A ∈ G'_set → B ∈ G'_set → A * B ∈ G'_set) ∧
  (∀ A B C : Mat2, A ∈ G'_set → B ∈ G'_set → C ∈ G'_set → (A * B) * C = A * (B * C)) ∧
  (oneM ∈ G'_set) ∧
  (∀ A : Mat2, A ∈ G'_set → ∃ B : Mat2, B ∈ G'_set ∧ A * B = oneM ∧ B * A = oneM) := by
  sorry
