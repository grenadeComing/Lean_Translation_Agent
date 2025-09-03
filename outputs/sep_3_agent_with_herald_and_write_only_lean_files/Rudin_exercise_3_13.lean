import Mathlib

/-- Rudin, Exercise 3.13 (Cauchy product of absolutely convergent series).
If (a_n) and (b_n) are real sequences with absolutely convergent series,
then the Cauchy product c_k := ∑_{i=0}^k a_i * b_{k-i} is absolutely summable. -/
theorem Rudin_exercise_3_13 {a b : ℕ → ℝ}
  (ha : Summable fun n => |a n|)
  (hb : Summable fun n => |b n|) :
  Summable fun k => |∑ i in Finset.range (k+1), a i * b (k - i)| := by sorry
