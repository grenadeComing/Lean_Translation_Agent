import Mathlib

/-!
Let R be a ring and let a,b,c ∈ R. Prove each of the following:
1. a · 0 = 0 = 0 · a
2. a(-b) = -(ab) = (-a)b
3. (-a)(-b) = ab
4. a(b-c) = ab - ac
5. (-1)a = -a

Each statement is given as a theorem ending with `:= by sorry` as requested.
We use unique names to avoid clashes with Mathlib.
-/

variable {R : Type*} [Ring R]

theorem srdoty_mul_zero (a : R) : a * 0 = 0 := by
  sorry

theorem srdoty_zero_mul (a : R) : 0 * a = 0 := by
  sorry

theorem srdoty_mul_neg (a b : R) : a * -b = -(a * b) := by
  sorry

theorem srdoty_neg_mul (a b : R) : -a * b = -(a * b) := by
  sorry

theorem srdoty_neg_neg_mul (a b : R) : -a * -b = a * b := by
  sorry

theorem srdoty_mul_sub (a b c : R) : a * (b - c) = a * b - a * c := by
  sorry

theorem srdoty_neg_one_mul (a : R) : (-1 : R) * a = -a := by
  sorry
