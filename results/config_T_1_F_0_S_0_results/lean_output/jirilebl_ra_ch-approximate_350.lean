import Mathlib
open Complex

/-- The function f(z) = 1 / (z^2 + 1)^2. We state that it is analytic at 0, give its power series
    expansion at 0 and the explicit coefficients, and state that the radius of convergence is 1.
    (No proof provided.) -/

def f (z : ℂ) : ℂ := 1 / (z ^ 2 + 1) ^ 2

theorem f_analytic_and_power_series :
  IsAnalyticAt f 0 ∧
    ∃ a : ℕ → ℂ,
      (∀ z, abs z < 1 → f z = ∑' n : ℕ, a n * z ^ n) ∧
        (∀ n : ℕ, a (2 * n) = (-1 : ℂ) ^ n * (↑(n + 1) : ℂ)) ∧
          (∀ n : ℕ, a (2 * n + 1) = 0) ∧
            ((∀ r : ℝ, 0 ≤ r → r < 1 → Summable (fun n => abs (a n) * r ^ n)) ∧
               (∀ r : ℝ, r > 1 → ¬Summable (fun n => abs (a n) * r ^ n))) := by sorry