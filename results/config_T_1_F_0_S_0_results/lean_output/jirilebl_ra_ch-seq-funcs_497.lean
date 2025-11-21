import Mathlib

/-- Let 0 ≤ c < 1. The geometric series ∑_{k=0}^∞ x^k is uniformly Cauchy (hence uniformly convergent)
on the interval Icc (-c) c. Formulated using the uniform Cauchy criterion: for every ε>0 there exists
N such that for all m,n with N ≤ m ≤ n and all x ∈ Icc (-c) c, the tail sum |∑_{k=m}^n x^k| ≤ ε. -/
lemma series_pow_uniform_cauchy_on_Icc {c : ℝ} (hc1 : 0 ≤ c) (hc2 : c < 1) :
  ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ m n : ℕ, N ≤ m → m ≤ n → ∀ x ∈ Icc (-c) c, |∑ k in Finset.Ico m (n+1), x ^ k| ≤ ε := by sorry
