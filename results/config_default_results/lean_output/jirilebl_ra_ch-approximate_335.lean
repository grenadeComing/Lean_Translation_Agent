import Mathlib

open Real

noncomputable section

/-- The function f(x) = 1 / (x^2 + 1). -/
noncomputable def f (x : ℝ) : ℝ := 1 / (x ^ 2 + 1)

/-- A candidate sequence of power series coefficients: a_{2k} = (-1)^k, a_{2k+1} = 0. -/
def a (n : ℕ) : ℝ := match n % 2 with
| 0 => (-1 : ℝ) ^ (n / 2)
| _ => 0

/-- We state that there exists a power series with radius 1 which equals f on (-1,1),
    and its coefficients are a_n as above. -/
def is_power_series_of_f_at0 (coeffs : ℕ → ℝ) (r : ℝ) : Prop :=
  r = 1 ∧ ∀ x : ℝ, abs x < r → f x = ∑' (n : ℕ), coeffs n * x ^ n

theorem f_analytic_and_power_series_at_0 :
  ∃ (coeffs : ℕ → ℝ), is_power_series_of_f_at0 coeffs 1
    ∧ (∀ k, coeffs (2 * k) = (-1 : ℝ) ^ k)
    ∧ (∀ k, coeffs (2 * k + 1) = 0) := by sorry

end
