import Mathlib

/-!
# Finite extensions of R and splitting of polynomials

This file records the classical facts (stated without proof) that a field k containing
R and finite-dimensional as an R-vector space is isomorphic (as an R-algebra) to R or C,
that splitting fields of real polynomials have degree at most 2 over R, and that every
polynomial over C splits into linear factors over C.
-/

open Polynomial

theorem finite_dimensional_field_over_R_is_R_or_C (k : Type*) [Field k] [Algebra ℝ k]
    [FiniteDimensional ℝ k] :
  (Nonempty (k ≃ₐ[ℝ] ℝ)) ∨ (Nonempty (k ≃ₐ[ℝ] Complex)) := by sorry

theorem splitting_field_finrank_le_two (f : Polynomial ℝ) :
  FiniteDimensional.finrank ℝ (Polynomial.splitting_field f) ≤ 2 := by sorry

theorem complex_polynomials_split_over_C (f : Polynomial Complex) :
  Polynomial.IsSplit f := by sorry
