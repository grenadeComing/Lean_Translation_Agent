import Mathlib

/-
Translate: Let R be a ring and let a,b,c ∈ R. Prove each of the following:
 a * 0 = 0 = 0 * a,
 a(-b) = -(ab) = (-a)b,
 (-a)(-b) = ab,
 a(b-c) = ab - ac,
 (-1)a = -a.

Each statement is given here as a Lean theorem; proofs are omitted ("by sorry").
-/

variable {R : Type _} [Ring R]

theorem srdoty_mul_zero (a : R) : a * 0 = 0 := by sorry

theorem srdoty_zero_mul (a : R) : 0 * a = 0 := by sorry

theorem srdoty_mul_neg (a b : R) : a * -b = -(a * b) := by sorry

theorem srdoty_neg_mul (a b : R) : -a * b = -(a * b) := by sorry

theorem srdoty_neg_neg (a b : R) : -a * -b = a * b := by sorry

theorem srdoty_mul_sub (a b c : R) : a * (b - c) = a * b - a * c := by sorry

theorem srdoty_neg_one_mul (a : R) : (-1 : R) * a = -a := by sorry
