import Mathlib

open Matrix Complex

variable {n : Type _} [Fintype n] [DecidableEq n]

/--
A normal matrix (operator) on a complex finite-dimensional inner product space is
self-adjoint (Hermitian) iff all its eigenvalues are real.  This is a Lean translation
of Axler, Exercise 7.9.  (Proof omitted.)
-/
theorem normal_operator_is_selfadjoint_iff_eigenvalues_real (A : Matrix n n ℂ)
  (h_normal : A * A.conjTranspose = A.conjTranspose * A) :
  (A = A.conjTranspose) ↔
    ∀ μ : ℂ, (∃ v : n → ℂ, v ≠ 0 ∧ A.mulVec v = μ • v) → μ.im = 0 := by sorry
