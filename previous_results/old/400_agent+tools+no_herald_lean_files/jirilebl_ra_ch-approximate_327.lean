import Mathlib

open Real

noncomputable section

def f (x : ℝ) := exp x * cos x

theorem jirilebl_ra_ch_approximate_327 :
  AnalyticAt ℝ f 0 ∧
  (∃ a : ℕ → ℝ,
    (∀ n, a n = Finset.sum (Finset.range (n / 2 + 1)) fun (m : ℕ) =>
      ((-1 : ℝ) ^ m) / ((Nat.factorial (n - 2 * m) : ℝ) * (Nat.factorial (2 * m) : ℝ))) ∧
    (∀ x : ℝ, HasSum (fun n => a n * x ^ n) (f x))) := by sorry

end noncomputable section
