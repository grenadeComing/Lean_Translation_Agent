import Mathlib

/-!
Statement: Take an invertible matrix A with at least one eigenvalue λ satisfying λ > 1
and at least one eigenvalue satisfying λ < -1. Then A : ℝ^n → ℝ^n is a covering map.

This file contains only the statement (no proof), translated into Lean4/Mathlib style.
-/

theorem benmckay_top_covering_spaces_216 (n : ℕ) (A : Matrix (Fin n) (Fin n) ℝ)
  (h_det : A.det ≠ 0)
  (h_pos : ∃ (λ : ℝ) (v : Fin n → ℝ), λ > 1 ∧ v ≠ 0 ∧ (matrix.to_lin A : (Fin n → ℝ) →ₗ[ℝ] (Fin n → ℝ)) v = λ • v)
  (h_neg : ∃ (μ : ℝ) (w : Fin n → ℝ), μ < -1 ∧ w ≠ 0 ∧ (matrix.to_lin A : (Fin n → ℝ) →ₗ[ℝ] (Fin n → ℝ)) w = μ • w) :
  IsCoveringMap (matrix.to_lin A : (Fin n → ℝ) → (Fin n → ℝ)) := by sorry