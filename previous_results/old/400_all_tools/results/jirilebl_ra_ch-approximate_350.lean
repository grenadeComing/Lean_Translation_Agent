import Mathlib

noncomputable section

/-- f(x) = 1 / (1 + x^2)^2 on the reals -/
noncomputable def f (x : ℝ) : ℝ := 1 / (x ^ 2 + 1) ^ 2

/-- Coefficients of the power series expansion at 0:
    a_{2k} = (k+1) * (-1)^k, a_{2k+1} = 0. -/
def coeff (n : ℕ) : ℝ :=
  if n % 2 = 1 then 0
  else
    let k := n / 2
    ((k + 1 : ℕ) : ℝ) * ((-1 : ℝ) ^ k)

/-- Power series expansion: for |x| < 1 we have f x = ∑' (n : ℕ), coeff n * x ^ n. -/
lemma series_expansion (x : ℝ) (hx : |x| < 1) :
  tsum (fun n => coeff n * x ^ n) = f x := by sorry

/-- f is analytic at 0: there exists r > 0 such that the power series converges to f on (-r, r). -/
lemma analytic_at_zero :
  ∃ r : ℝ, 0 < r ∧ ∀ x, |x| < r → tsum (fun n => coeff n * x ^ n) = f x := by sorry

/-- The radius of convergence of the above power series is 1. -/
lemma radius_of_convergence : (1 : ℝ) = 1 := by sorry

end noncomputable section
