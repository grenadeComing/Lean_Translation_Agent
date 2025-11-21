import Mathlib

open Matrix

theorem benmckay_top_continuity_502 (n : ℕ)
  (f : (Fin n → Fin n → ℝ) → ℝ)
  (hf : Continuous f)
  (hO : ∀ (U : Matrix (Fin n) (Fin n) ℝ), U.transpose * U = 1 ->
         ∀ v : Fin n → Fin n → ℝ, f (fun j => U.mulVec (v j)) = f v) :
  ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ,
    ContinuousOn g {A | A = A.transpose ∧ ∀ x : Fin n → ℝ, (∑ i, x i * (Matrix.mulVec A x) i) ≥ 0} ∧
    ∀ v : Fin n → Fin n → ℝ, f v = g (fun i j => ∑ k, v i k * v j k) := by sorry
