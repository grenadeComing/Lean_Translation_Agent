import Mathlib

open Set Filter

variable (RiemannIntegrableOn : (ℝ → ℝ) → Set ℝ → Prop)
variable (riemann_integral : (ℝ → ℝ) → ℝ → ℝ → ℝ)

/-- Let f_n : [a,b] → ℝ be Riemann integrable and suppose f_n → f uniformly on [a,b].
    Then f is Riemann integrable and ∫_a^b f = lim_{n→∞} ∫_a^b f_n. -/
theorem uniform_limit_of_riemann_integrable {a b : ℝ} (hab : a < b) {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (hfi : ∀ n, RiemannIntegrableOn (f n) (Icc a b)) (huni : TendstoUniformlyOn (fun n => f n) g atTop (Icc a b)) :
  RiemannIntegrableOn g (Icc a b) ∧ Tendsto (fun n => riemann_integral (f n) a b) atTop (nhds (riemann_integral g a b)) := by sorry
