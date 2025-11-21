import Mathlib

noncomputable section

/-- f_n(x) = x / (1 + (n x)^2) -/
def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + (↑n * x) ^ 2)

/-- g_n(x) = \sum_{k=1}^n 2^{-k} f_n(x - a_k), where a : ℕ → ℚ enumerates the rationals -/
def g (a : ℕ → ℚ) (n : ℕ) (x : ℝ) : ℝ :=
  Finset.sum (Finset.range n) fun k => (1 : ℝ) / (2 : ℝ) ^ (k + 1) * f n (x - (a (k + 1) : ℝ))

/-- The sequence g_n converges uniformly to 0 on ℝ. -/
theorem jirilebl_ra_ch_seq_funcs_1442 (a : ℕ → ℚ) :
  TendstoUniformly (g a) (fun _ => (0 : ℝ)) atTop := by sorry
