import Mathlib

open BigOperators
open Matrix

/-- Euclidean inner product on Fin n -> ℝ. -/
def euclidean_inner {n : Nat} (x y : Fin n → ℝ) : ℝ :=
  ∑ i : Fin n, x i * y i

/-- Gram matrix map: given n vectors in ℝ^n (as a function i ↦ v_i), return the n×n Gram matrix. -/
def gram_map {n : Nat} (v : Fin n → Fin n → ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  Matrix.of fun i j => euclidean_inner (v i) (v j)

/-- Main statement: a continuous O(n)-invariant function factors through the Gram map. -/
theorem top_continuity_invariant_gram {n : Nat} (f : (Fin n → Fin n → ℝ) → ℝ)
  (hf : Continuous f)
  (hO : ∀ (U : Matrix (Fin n) (Fin n) ℝ), U.transpose * U = 1 -> ∀ v : Fin n → Fin n → ℝ, f (fun i => U.mulVec (v i)) = f v) :
  ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ, Continuous g ∧ ∀ v, f v = g (gram_map v) := by
  sorry
