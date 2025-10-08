import Mathlib

open BigOperators

/-- Gram matrix of n vectors in R^n. We represent a tuple (v_1,...,v_n) as
    v : Fin n → (Fin n → ℝ), where v i j is the j-th coordinate of the i-th vector.
    The Gram matrix has entries A_{ij} = ∑_k v_i_k * v_j_k. -/
def gram {n : ℕ} (v : Fin n → Fin n → ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  fun i j => ∑ k, v i k * v j k

/-- Statement: a continuous function f on n-tuples of vectors which is invariant
    under simultaneous orthogonal transformations factors through the Gram map.
    We express orthogonality of U by U.transpose * U = 1. -/
theorem exists_continuous_g_of_orth_inv {n : ℕ} (f : (Fin n → Fin n → ℝ) → ℝ)
  (hf : Continuous f)
  (hU : ∀ (v : Fin n → Fin n → ℝ) (U : Matrix (Fin n) (Fin n) ℝ),
    U.transpose * U = 1 → f (fun i j => ∑ k, (U i k) * v k j) = f v) :
  ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ, Continuous g ∧ ∀ v, g (gram v) = f v := by sorry
