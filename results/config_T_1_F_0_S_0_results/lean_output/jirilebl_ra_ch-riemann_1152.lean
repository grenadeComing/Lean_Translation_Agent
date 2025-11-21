import Mathlib

/-- Let f : [a,b] → ℝ and sequences a_n, b_n with a < a_n < b_n < b for all n, a_n → a, b_n → b.
    Suppose f is integrable on each [a_n, b_n]. Then f is integrable on [a,b] and the integrals converge:
    ∫_a^b f = lim_{n→∞} ∫_{a_n}^{b_n} f. -/
theorem integral_of_limits_of_intervals {f : ℝ → ℝ} {a b : ℝ} {a_n b_n : ℕ → ℝ}
  (h_between : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (h_an : Tendsto a_n atTop (𝓝 a))
  (h_bn : Tendsto b_n atTop (𝓝 b))
  (h_int : ∀ n, IntervalIntegrable f volume (a_n n) (b_n n)) :
  IntervalIntegrable f volume a b ∧
    Tendsto (λ n, ∫ x in a_n n .. b_n n, f x) atTop (𝓝 (∫ x in a..b, f x)) := by sorry