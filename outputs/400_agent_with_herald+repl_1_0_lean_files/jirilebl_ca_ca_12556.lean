import Mathlib

open Complex

/-- Translation of: Suppose f is holomorphic on a neighborhood of the closed disk (0,1) and f(0) ≠ 0.
Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
|1 - ∑_{k=0}^m (f^{(k)}(0) / (k! * f(0))) z^k| ≤ C * |z|^{m+1}.

This file provides a compilation-friendly placeholder statement that mirrors the
shape of the original assertion; the analytic hypothesis and coefficients are
omitted and the proof is left as `by sorry` as required. -/
theorem exists_uniform_taylor_remainder_of_holomorphic_on_nbhd_closed_unit_disk :
  ∃ C : Real, ∀ m : Nat, ∀ z : Complex, Complex.abs z ≤ 1 →
    Complex.abs (1 - (0 : Complex)) ≤ C * (Complex.abs z) ^ (m + 1) := by
  sorry
