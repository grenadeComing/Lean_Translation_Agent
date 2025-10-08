import Mathlib

open Filter Topology MeasureTheory
open scoped Topology

/-- Let f : [a,b] → ℝ be a bounded function, {a_n} and {b_n} sequences with a < a_n < b_n < b for all n, a_n → a and b_n → b. Suppose f is Riemann integrable on [a_n,b_n] for all n. Then f is Riemann integrable on [a,b] and ∫_a^b f = lim_{n→∞} ∫_{a_n}^{b_n} f. -/
theorem riemann_integrable_on_of_limits {a b : ℝ} {f : ℝ → ℝ}
  (ha_lt : a < b)
  (a_n b_n : ℕ → ℝ)
  (h_seq_bounds : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (h_a_lim : Tendsto (fun n => a_n n) atTop (𝓝 a))
  (h_b_lim : Tendsto (fun n => b_n n) atTop (𝓝 b))
  (h_int : ∀ n, IntervalIntegrable f volume (a_n n) (b_n n)) :
  IntervalIntegrable f volume a b := by sorry

/-- And the convergence of integrals. -/
theorem integral_of_limits {a b : ℝ} {f : ℝ → ℝ}
  (ha_lt : a < b)
  (a_n b_n : ℕ → ℝ)
  (h_seq_bounds : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (h_a_lim : Tendsto (fun n => a_n n) atTop (𝓝 a))
  (h_b_lim : Tendsto (fun n => b_n n) atTop (𝓝 b))
  (h_int : ∀ n, IntervalIntegrable f volume (a_n n) (b_n n)) :
  Tendsto (fun n => ∫ x in a_n n..b_n n, f x) atTop (𝓝 (∫ x in a..b, f x)) := by sorry
