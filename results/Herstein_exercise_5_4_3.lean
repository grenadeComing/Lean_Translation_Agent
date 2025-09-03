import Mathlib

open Polynomial

/-- Define the polynomial p(x) = x^5 + sqrt(2) x^3 + sqrt(5) x^2 + sqrt(7) x + sqrt(11)
    with coefficients viewed in ℂ. -/
noncomputable def p : Polynomial ℂ :=
  X ^ 5
  + C (Complex.ofReal (Real.sqrt (2 : Real))) * X ^ 3
  + C (Complex.ofReal (Real.sqrt (5 : Real))) * X ^ 2
  + C (Complex.ofReal (Real.sqrt (7 : Real))) * X
  + C (Complex.ofReal (Real.sqrt (11 : Real)))

/-- Exercise: If a ∈ ℂ is a root of p, then a is algebraic over ℚ of degree at most 80.
    We express the degree bound by producing a nonzero polynomial q ∈ ℚ[x] with
    degree ≤ 80 such that q(a) = 0 (evaluated in ℂ via algebraMap ℚ ℂ). -/
theorem Herstein_exercise_5_4_3 {a : ℂ} (h : (p.eval a) = 0) :
  ∃ q : Polynomial ℚ, q ≠ 0 ∧ Polynomial.eval₂ (algebraMap ℚ ℂ) a q = 0 ∧
    Polynomial.degree q ≤ (80 : WithBot ℕ) := by
  sorry
