import Mathlib

/-- Let f_n : [a,b] → ℝ be Riemann integrable and suppose f_n → f uniformly on [a,b].
    Then f is Riemann integrable and ∫_a^b f = lim_{n→∞} ∫_a^b f_n. -/
theorem uniform_limit_riemann_integrable {a b : ℝ} {f : ℕ → ℝ → ℝ} {f_lim : ℝ → ℝ}
  (h_int : ∀ n, IsRiemannIntegrableOn (f n) a b)
  (h_unif : ∀ ε > 0, ∃ N, ∀ n, n ≥ N → ∀ x ∈ Icc a b, |f n x - f_lim x| < ε) :
  IsRiemannIntegrableOn f_lim a b ∧ Tendsto (fun n => riemann_integral (f n) a b) atTop (𝓝 (riemann_integral f_lim a b)) := by sorry