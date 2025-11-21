import Mathlib

open Finset Matrix

variable {n : ℕ}

/-- The Gram matrix of n vectors v_i in R^n. We represent R^n as `Fin n → ℝ` and an n-tuple
    of such vectors as `Fin n → (Fin n → ℝ)`. -/
noncomputable def gram (v : Fin n → Fin n → ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  fun i j => ∑ (k : Fin n), v i k * v j k

/-- The set Y of symmetric positive semidefinite n×n real matrices. We express positive
    semidefiniteness by the usual quadratic form nonnegativity. -/
def Y : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A = A.transpose ∧ ∀ (x : Fin n → ℝ), (∑ (i : Fin n) (j : Fin n), x i * A i j * x j) ≥ 0 }

/-- Main statement: any continuous function of n vectors in R^n which is invariant under
    simultaneous orthogonal transformations depends only on the Gram matrix. We state the
    invariance with respect to all linear isometric equivalences of `Fin n → ℝ` (the
    orthogonal group). The conclusion is the existence of a function `g` on matrices which
    is continuous on `Y` and satisfies `f v = g (gram v)` for every n-tuple `v`. -/
theorem benmckay_top_continuity_502
  (f : (Fin n → Fin n → ℝ) → ℝ)
  (hf_cont : Continuous f)
  (h_invariant : ∀ (U : (Fin n → ℝ) ≃ₗᵢ[ℝ] (Fin n → ℝ)) (v : Fin n → Fin n → ℝ),
    f (fun i => U (v i)) = f v) :
  ∃ (g : Matrix (Fin n) (Fin n) ℝ → ℝ),
    ContinuousOn g Y ∧ ∀ v, f v = g (gram v) := by sorry
