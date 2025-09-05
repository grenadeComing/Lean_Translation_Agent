import Mathlib

/-!
Translate: Take an invertible matrix A with at least one eigenvalue λ satisfying λ > 1
and at least one eigenvalue satisfying λ < -1. Prove that A : ℝ^n → ℝ^n is a covering map.

This file only states the result (no proof), ending with `:= by sorry` as requested.
-/

variable {n : ℕ}

open Matrix

theorem benmckay_top_covering_spaces_216
  (A : Matrix (Fin n) (Fin n) ℝ)
  (h_inv : A.det ≠ 0)
  (h_pos : ∃ (λ1 : ℝ) (v1 : Fin n → ℝ), v1 ≠ 0 ∧ A.toLin' v1 = λ1 • v1 ∧ λ1 > 1)
  (h_neg : ∃ (λ2 : ℝ) (v2 : Fin n → ℝ), v2 ≠ 0 ∧ A.toLin' v2 = λ2 • v2 ∧ λ2 < -1) :
  IsCoveringMap (A.toLin' : (Fin n → ℝ) → (Fin n → ℝ)) := by sorry
