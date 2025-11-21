import Mathlib
open Filter

/-- Let f : [a,b] → ℝ be a bounded function, {a_n} and {b_n} sequences such that a < a_n < b_n < b for all n, with lim_{n→∞} a_n = a and lim_{n→∞} b_n = b. Suppose f is Riemann integrable on [a_n,b_n] for all n. Then f is Riemann integrable on [a,b] and ∫_a^b f = lim_{n→∞} ∫_{a_n}^{b_n} f. -/
theorem jirilebl_ra_ch_riemann_1152 {f : ℝ → ℝ} {a b : ℝ} (h_ab : a < b)
  (aₙ bₙ : ℕ → ℝ)
  (h_seq : ∀ n, a < aₙ n ∧ aₙ n < bₙ n ∧ bₙ n < b)
  (h_a : Tendsto aₙ atTop (nhds a))
  (h_b : Tendsto bₙ atTop (nhds b))
  (h_bdd : ∃ M, ∀ x ∈ Set.Icc a b, |f x| ≤ M)
  (h_int : ∀ n, IntervalIntegrable f volume (aₙ n) (bₙ n)) :
  IntervalIntegrable f volume a b ∧
    Tendsto (fun n => intervalIntegral f (aₙ n) (bₙ n) volume) atTop (nhds (intervalIntegral f a b volume)) := by sorry
